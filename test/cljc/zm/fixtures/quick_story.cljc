(ns zm.fixtures.quick-story
  "Helpers for building a quick, fake story file for testing."
  (:require [zm.memory :refer :all]))

;; The tricky bit here is supporting the memory: we want to allow it to be
;; written easily.
;; Those mostly take the form of quick (zm ...) -> zm helpers that can go in
;; a pipeline.

;; For convience, the globals are always at 0x80.
;; User code lives at 0x4000.

(defn basics [version]
  {:mem {0x00 version
         0x01 0 ; Flags 1
         0x04 0x40   0x05 0x00 ; High memory (not really relevant)
         0x06 0x40   0x07 0x00 ; Initial PC = 0x4000
         0x08 0x02   0x09 0x00 ; Dictionary 0x200
         0x0a 0x10   0x0b 0x00 ; Object table: 0x1000
         0x0c 0x00   0x0d 0x80 ; Globals table: 0x80
         0x10 0      0x11 0    ; Flags 2
         } ; TODO Lots of missing header information.
   :version version
   :pc 0x4000
   :compiler 0x4000 ; Extra key used by the test fixture.
   :rom []
   :frame nil})

(defn cb [zm b]
  "Compiles a byte into the stream."
  (-> zm
    (assoc-in [:mem (:compiler zm)] b)
    (update :compiler inc)))

(defn cw [zm w]
  (-> zm
      (cb (bit-shift-right w 8))
      (cb (bit-and w 255))))

(defn compile [zm bytes]
  (reduce cb zm bytes))

(defn for-result [atom-zm f & rest]
  "Applies the given function and arguments to the Z-machine.
  Expects [zm' value] back; updates the atom and returns the value."
  (let [[zm' value] (apply f @atom-zm rest)]
    (reset! atom-zm zm')
    value))

