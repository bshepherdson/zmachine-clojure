(ns zm.memory
  "Memory access."
  (:require [zm.header :as hdr]))

;; Address types - currently no protection.
;; TODO Maybe wrap them.
(defn ba [ba] ba)
(defn wa [wa] (* 2 wa))
(def pa-multipliers [0 2 2 2 4 4 4 4 8])
(defn- pa [zm pa offset]
  "Internal only: use pa-string and pa-routine."
  (let [multiplier (nth pa-multipliers (:version zm))]
    (+ (* multiplier pa)
       (* 8 offset))))

(defn pa-string [zm addr]
  (pa zm addr (:strings-offset zm)))
(defn pa-routines [zm addr]
  (pa zm addr (:routines-offset zm)))

(defn ra [addr] addr)


(defn ->byte [b]
  (if (< b 128)
    b
    (- b 256)))

;; Actually memory accessors. Note that the Z-machine is big-endian.
;; Readers return the value, not the Z-machine state.
;; Writers and modifiers return the new state.
(defn rb [zm addr]
  (let [b (get-in zm [:mem addr] nil)]
    (if b
      b
      (bit-and 255 (int (nth (:rom zm) addr))))))

(defn rw [zm addr]
  (let [hi (rb zm addr)
        lo (rb zm (inc addr))]
    (bit-or (bit-shift-left hi 8) lo)))

(defn wb [zm addr b]
  (assoc-in zm [:mem addr] (bit-and 255 (int b))))
(defn ww [zm addr w]
  (let [w' (int w)]
    (-> zm
        (wb addr (bit-shift-right w' 8))
        (wb (inc addr) (bit-and 255 w')))))

(defn mb [zm addr f]
  (let [b  (rb zm addr)]
    (wb zm addr (f b))))
(defn mw [zm addr f]
  (let [w (rw zm addr)]
    (ww zm addr (f w))))


;; Manipulating at PC.
(defn pc+ [zm delta]
  (update zm :pc + delta))
(defn pc++ [zm] (pc+ zm 1))

;; These return value only.
(defn rbpc [zm]
  (rb zm (:pc zm)))
(defn rwpc [zm]
  (rw zm (:pc zm)))

;; Bump the PC by the amount read.
;; These return [zm value].
(defn rbpc+ [zm]
  [(pc++ zm)
   (rbpc zm)])
(defn rwpc+ [zm]
  [(pc+ zm 2)
   (rwpc zm)])


;; Header accessors
(defn version [zm]         (rb zm hdr/*version))
(defn globals [zm]         (rw zm hdr/*globals))
(defn objects [zm]         (rw zm hdr/*object-table))


