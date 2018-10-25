(ns zm.util
  "General utility functions.")

(defmacro v3-5 [zm lo hi]
  `(if (<= (:version ~zm) 3)
       ~lo
       ~hi))

