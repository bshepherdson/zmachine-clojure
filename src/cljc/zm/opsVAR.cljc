(ns zm.opsVAR
  "VAR operations"
  #?(:cljs (:require-macros [zm.util :refer [v4-5]]))
  (:require [zm.memory :refer :all]
            [zm.printing :as p]
            [zm.parsing :as zp]
            [zm.variables :as v]
            [zm.status-line :as sl]
            [zm.strings :as str]
            [zm.objects :as o]
            [zm.random :as rng]
            [zm.reading :refer [accept]]
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
        max-len (dec (rb zm text))
        s0      (accept max-len)
        s       (.toLowerCase s0)
        zm      (-> zm
                    (write-text (inc text) s)
                    (wb (+ 1 text (count s)) 0))] ; Terminator
    (if parse
      (zp/parse-text zm s parse false)
      zm)))

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
        max-len (rb zm text)
        s0      (accept max-len)
        s       (.toLowerCase s0)
        zm      (-> zm
                    (write-text (+ 2 text) s)
                    (wb (inc text) (count s)))] ; Length in byte 1.
    (if parse
      (zp/parse-text zm s parse false)
      zm)))


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
     ; TODO Implement screen model and screen splitting.
     zm)

   ; set_window window
   (fn [zm [win]]
     ; TODO Implement screen model and screen splitting.
     zm)

   ; call_vs2 routine args... -> result
   ; Long call, up to 7 args.
   (fn [zm [routine & args]]
     (zcall zm routine args true))

   ; erase_window window
   (fn [zm [win]]
     ; TODO Implement screen model and screen splitting.
     zm)

   ; erase_line value
   (fn [zm [value]]
     ; TODO Implement screen model and screen splitting.
     zm)

   ; set_cursor line column
   (fn [zm [value]]
     ; TODO Implement screen model and screen splitting.
     zm)

   ; get_cursor array
   (fn [zm [value]]
     ; TODO Implement screen model and screen splitting.
     zm)

   ; set_text_style style
   (fn [zm [style]]
     ; TODO Implement screen model and screen splitting.
     zm)

   ; buffer_mode flag
   (fn [zm [style]]
     ; TODO Implement screen model and screen splitting.
     zm)

   ; output_stream number [table]
   (fn [zm args]
     ; TODO Implement screen model and screen splitting.
     zm)

   ; input_stream number
   (fn [zm args]
     ; TODO Implement screen model and screen splitting.
     zm)

   ; sound_effect number effect volume routine
   (fn [zm args]
     ; TODO Implement screen model and screen splitting.
     zm)

   ; read_char 1 time routine -> result
   (fn [zm args]
     ; TODO Implement screen model and screen splitting.
     zm)

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

