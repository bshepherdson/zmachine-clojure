(ns zm.strings
  (:require [zm.header :as hdr]
            [zm.memory :refer :all]))

(declare read-ra)

(defn- decode-word [w]
  "Returns [end? a b c]."
  [(bit-test w 15)
   (bit-and 31 (bit-shift-right w 10))
   (bit-and 31 (bit-shift-right w 5))
   (bit-and 31 w)])

(defn- build-str-state [zm addr]
  {:zm zm
   :addr addr
   :end? false
   :queue []
   :shift 0
   :abbrev nil
   :literal nil
   :literal-stage 0
   :output []})


(defn- emit [st real-char]
  (update st :output conj (char real-char)))

(defn- dequeue [st]
  "Pops a zchar from the queue and returns [st' zc]."
  (let [[zc & q] (:queue st)]
    [(assoc st :queue q)
     zc]))


(defn- pop-word [st]
  "Populates the queue from the string pointer, if there's more.
  Returns [st' zc] if there's more, or [st' nil] if not."
  (if (:end? st)
    [st nil]
    (let [w     (rw (:zm st) (:addr st))
          addr' (+ 2 (:addr st))
          [end? a b c] (decode-word w)]
      [(assoc st
              :addr (+ 2 (:addr st))
              :end? end?
              :queue [b c])
       a])))

(defn- step [st]
  "Returns [st' zc]; zc is nil if there's no more."
  (if (empty? (:queue st))
    (pop-word st)
    (dequeue st)))

(defn- shift  [st zc] (assoc st :shift zc))
(defn- abbrev [st zc] (assoc st :abbrev zc))

(defn- a0 [st zc] (emit st (+ (int \a) (- zc 6))))
(defn- a1 [st zc] (emit st (+ (int \A) (- zc 6))))

(def a2-chars "0123456789.,!?_#'\"/\\-:()")

(defn- a2 [st zc]
  (case zc
    6 (assoc st :literal 0 :literal-stage 1)
    7 (emit st \newline)
    (emit st (nth a2-chars (- zc 8)))))

(defn- regular [st zc]
  (let [st' (case (:shift st)
              0 (a0 st zc)
              1 (a1 st zc)
              2 (a2 st zc))]
    (assoc st' :shift 0)))


(defn handle-literal [st zc]
  (case (:literal-stage st)
    1 (assoc st :literal-stage 2 :literal (bit-shift-left zc 5))
    2 (-> st
          (emit (bit-or zc (:literal st)))
          (assoc :literal-stage 0))))

(defn- handle-abbrev [st zc]
  "Computes and inlines an abbreviation."
  (let [zm     (:zm st)
        table  (rw zm hdr/*abbreviations)
        index  (+ zc (* 32 (dec (:abbrev st))))
        addr   (+ table (* 2 index))
        word-addr (rw zm addr)
        s (read-ra zm (wa word-addr))]
    (reduce emit (assoc st :abbrev nil) s)))


(defn- handle-char [st zc]
  (cond
    (> (:literal-stage st) 0) (handle-literal st zc)
    (not (nil? (:abbrev st))) (handle-abbrev st zc)
    :else (case zc
            0 (emit st \space)
            1 (abbrev st 1)
            2 (abbrev st 2)
            3 (abbrev st 3)
            4 (shift  st 1)
            5 (shift  st 2)
            (regular st zc))))

(defn read-ra [zm ra]
  "Returns the string at a real address and returns the Clojure string."
  (loop [st (build-str-state zm ra)]
    (let [[st' zc] (step st)]
      (if (nil? zc)
        (apply str (:output st'))
        (recur (handle-char st' zc))))))

(defn length-words [zm ra]
  "Returns the length in words of this string in memory."
  (loop [addr ra
         len  0]
    (if (bit-test (rw zm addr) 15)
      (inc len)
      (recur (+ 2 addr) (inc len)))))

