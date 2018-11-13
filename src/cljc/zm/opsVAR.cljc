(ns zm.opsVAR
  "VAR operations"
  #?(:cljs (:require-macros [zm.util :refer [v4-5]]))
  (:require [zm.memory :refer :all]
            [zm.printing :as p]
            [zm.parsing :as zp]
            [zm.variables :as v]
            [zm.status-line :as sl]
            [zm.strings :as str]
            [zm.screen :as sc]
            [zm.input :as input]
            [zm.objects :as o]
            [zm.random :as rng]
            [zm.zmachine :refer [read-file]]
            [zm.helpers :refer :all]
            #?(:clj [zm.util :refer [v4-5]])))

   ; - (v3: Redisplay the status line first.)
   ; - Accept a line of input
   ;   - TODO v5+ accept different terminating characters. 
   ; - v4+: byte 0 of text-buffer holds the max letters -1, stored in 1 onwards.
   ; - v5:  byte 0 holds the max letters. number actually read in byte 1 (not
   ;   counting the terminator), characters in byte 2 onwards (no terminator).
   ;   - If byte 1 has a nonzero value, assume they're left over from before.


(defn- write-text [zm addr s]
  (loop [[c & rest] s
         buf        (inc addr)
         zm         zm]
    (if rest
      (recur rest
             (inc buf)
             (wb zm buf (int c)))
      (wb buf c))))

(defn- read-v4 [zm args]
  "Performs a command read, for v4 and below.
  - In v3 and below, redisplay the status line first.
  - text-buffer holds the max letters minus 1; characters go in byte 1 onwards.
  - typed text is reduced to lower case before storage in text-buffer.
  - if parse-buffer is nonzero, do lexical analysis."
  (when (< (:version zm) 4)
    (sl/print-status-line))
  (let [text    (nth args 0 nil)
        parse   (nth args 1 nil)
        max-len (dec (rb zm text))]
    (input/read zm max-len
                #(let [s       (.toLowerCase %2)
                       zm      (-> %1
                                   (write-text (inc text) s)
                                   (wb (+ 1 text (count s)) 0))] ; Terminator
                   (if parse
                     (zp/parse-text zm s parse false)
                     zm)))))

(defn- read-v5 [zm args]
  "Performs a command read, for v5 and above.
  - text-buffer holds the max letters; characters go in byte 2 onwards.
  - Number of characters read goes in byte 1.
  - typed text is reduced to lower case before storage in text-buffer.
  - if parse-buffer is nonzero, do lexical analysis.
  - This is a store opcode; it stores the terminating character (13 for enter)."
  ; TODO Different terminating characters in v5+.
  (let [text    (nth args 0 nil)
        parse   (nth args 1 nil)
        max-len (rb zm text)]
    (input/read zm max-len
                #(let [s       (.toLowerCase %2)
                       zm      (-> %1
                                   (write-text (+ 2 text) s)
                                   (wb (inc text) (count s)))] ; Length in byte 1.
                   (if parse
                     (zp/parse-text zm s parse false)
                     zm)))))


; Handling for output stream 3.
(defn- push-stream-3 [zm table]
  (let [s3 {:nest (:stream-3 zm)
            :table table
            :text  (+ 2 table)}]
    (-> zm
        (assoc :stream-3 s3)
        (update :output-streams conj 3))))

(defn- pop-stream-3 [zm]
  "We need to write the length of the string into the first word."
  (let [s3  (:stream-3 zm)
        len (- (:text s3) (:table s3) 2)
        zm  (-> zm
                (ww (:table s3) len)
                (assoc :stream-3 (:nest s3)))]
    (if (:nest s3)
      zm
      (update zm :output-streams disj 3))))

(def ops
  [; call_1s routine args... -> result
   #(zcall %1 (pa-routines %1 (first %2)) (rest %2) true)

   ; storew array word-index value
   #(let [[array index value] %2]
      (ww %1 (+ array (* 2 index)) value))

   ; storeb array byte-index value
   #(let [[array index value] %2]
      (wb %1 (+ array index) value))

   ; put_prop obj prop value
   (fn [zm [obj prop value]]
     (let [*obj  (o/object zm obj)
           *prop (o/find-prop zm *obj prop)
           *data (when *prop (o/prop->data zm *prop))]
       (when (nil? *prop) (throw (Exception. "Tried to set property that does not exist")))
       ((if (= 1 (o/prop-len zm *prop))
          wb ww)
        zm *data value)))

   ; read text parse                           (v3)
   ; read text parse time routine              (v4)
   ; read text parse time routine -> result    (v5)

   ; Most of the internal text-processing logic is the same, but the processing
   ; of the opcode varies substantially between the versions, so we split it
   ; here.
   (fn [zm args] ((v4-5 zm read-v4 read-v5) zm args))

   ; print_char output-character-code
   (fn [zm [ch]] (p/print (str (char ch))))

   ; print_num value
   (fn [zm [num]] (p/print (str num)))

   ; random range -> result
   ; Range positive: uniform random between 1 and range.
   ; Range negative: seed it to the -range, return 0.
   ; Range 0: Re-seed randomly.
   (fn [zm [range]]
     (cond
       (pos? range) (zstore zm (rng/random (:rng zm) range))
       :else (-> zm
                 (update :rng (if (neg? range)
                                (rng/mkrandom (- range))
                                (rng/mkrandom)))
                 (zstore 0))))

   ; push value
   v/zpush

   ; pull (var)
   (fn [zm [var]]
     (let [[zm value] (v/zpop zm)]
       (v/wvar zm var value)))

   ; split_window lines
   (fn [zm [lines]]
     (sc/split! zm lines))

   ; set_window window
   (fn [zm [win]]
     (sc/window! zm win))

   ; call_vs2 routine args... -> result
   ; Long call, up to 7 args.
   (fn [zm [routine & args]]
     (zcall zm routine args true))

   ; erase_window window
   ; Erase the given window.
   ; If -1, unsplit and clear all. If -2, clear all without unsplitting.
   (fn [zm [win]]
     (case (signed win)
       ; Clear all windows without unsplitting them.
       -2 (-> zm
              (sc/erase-window! sc/upper-window)
              (sc/erase-window! sc/lower-window))
       ; Unsplit and clear all.
       -1 (-> zm 
              (sc/split! 0) ; Unsplits
              (sc/erase-window! sc/lower-window))

       ; Default: just erase this one.
       (sc/erase-window! zm win)))

   ; erase_line value
   ; Value needs to be 1. Otherwise, this is a no-op.
   (fn [zm [value]]
     (if (= 1 value)
       (sc/erase-line! zm)
       zm))

   ; set_cursor line column
   (fn [zm [l c]]
     (sc/cursor! zm (dec l) (dec c)))

   ; get_cursor array
   ; Writes the cursor row into word 0, column into word 1.
   (fn [zm [array]]
     (let [[r c] (-> zm :screen :cursor)]
       (-> zm
           (ww array       (inc r))
           (ww (+ 2 array) (inc c)))))


   ; set_text_style style
   (fn [zm [style]]
     (sc/style! zm style))

   ; buffer_mode flag
   (fn [zm [flag]] zm) ; I'm a no-op, buffering is irrelevant here.

   ; output_stream number [table]
   ; There are four of these:
   ; 1. Main text screen
   ; 2. Unaddressable transcript
   ; 3. Nestable, priority writing to a table of memory.
   ; 4. Replayable script of interactions
   (fn [zm args]
     (let [number (signed (nth args 0))
           table  (nth args 1 nil)]
       (cond
         (= number  3) (push-stream-3 zm table)
         (= number -3) (pop-stream-3  zm)
         (neg? number) (update zm :output-streams disj (- number))
         (pos? number) (update zm :output-streams conj    number))))


   ; input_stream number
   (fn [zm args] zm) ; No-op.

   ; sound_effect number effect volume routine
   (fn [zm args] zm) ; Not implemented.

   ; read_char 1 time routine -> result
   (fn [zm args]
     (input/single-char zm zstore))

   ; scan_table x table len form -> result ?label
   (fn [zm [x table len & rest]]
     (let [form (nth 0 rest 0x82)
           words? (bit-test form 7)
           size   (bit-and 0x7f form)]
       (loop [cnt len
              *t  table]
         (if (= 0 cnt)
           ; Not found: store 0 and branch.
           (-> zm (zstore 0) (zbranch false))

           ; Still going. Read and check.
           (let [y ((if words? rw rb) zm *t)]
             (if (= x y)
               ; Matched; return its address and branch.
               (-> zm (zstore *t) (zbranch true))
               ; Not matched: loop
               (recur (dec cnt) (+ *t size))))))))

   ; not value -> result
   (fn [zm [value]]
     (zstore zm (bit-xor 0xffff value)))

   ; call_vn routine args...
   (fn [zm [routine & args]]
     (zcall zm routine args false))
   ; call_vn2 routine args...
   (fn [zm [routine & args]]
     (zcall zm routine args false))

   ; tokenise text parse [dictionary [flag]]
   ; The flag is set to soft-touch the parse fields, and not write 0s.
   (fn [zm [text parse & rest]]
     (let [dict (nth rest 0 nil)
           flag (nth rest 1 false)
           len  (rb zm (inc text))]
       (if dict
         (zp/parse-text-dict zm text len parse flag dict)
         (zp/parse-text      zm text len parse flag))))

   ; encode_text zscii-text length from coded-text
   ; Encodes the raw ZSCII string at [from, from+length) in zscii-text.
   ; coded-text points at a dictionary-sized buffer.
   (fn [zm [text len from dest]]
     (let [s (zp/->str zm text from (+ len from))
           encoded (zp/encode-for-dictionary zm s)]
       (reduce-kv #(ww %1 (+ dest (* 2 %2))
                       %3)
                  zm
                  encoded)))

   ; copy_table first second size
   ; If second is 0, then size bytes of first are zeroed.
   ; Otherwise first is copied to second, length is abs(size).
   ; The tables can overlap; for positive size we copy to avoid corrupting first
   ; If size is negative, we copy forwards either way.
   (fn [zm [src dst size]]
     (cond
       (= 0 dst) (reduce #(wb %1 (+ src %2) 0)
                         zm
                         (range (Math/abs size))) ; Zero src.
       (neg? size) (copy> src dst (- size))
       (< src dst) (copy< src dst size)
       :else       (copy> src dst size)))

   ; print_table zscii-text width height skip
   (fn [zm [zscii-text width & rest]]
     (let [height (nth 0 rest 1)
           skip   (nth 1 rest 0)]
       ; TODO Implement screen model and screen splitting.
       ))

   ; check_arg_count arg-number
   ; Branches if the given argument number (counting from 1) has been provided.
   (fn [zm [arg]]
     (zbranch zm (>= arg (get-in zm [:frame :arg-count]))))
   ])

(defn run [zm opnum args] ((nth ops opnum) zm args))

