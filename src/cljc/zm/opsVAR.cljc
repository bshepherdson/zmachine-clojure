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
      (zp/parse-text zm s parse)
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
      (zp/parse-text zm s parse)
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
   ])

(defn run [zm opnum args] ((nth ops opnum) zm args))

