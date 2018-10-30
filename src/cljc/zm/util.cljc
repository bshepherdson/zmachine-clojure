(ns zm.util
  "General utility functions.")

(defmacro v3-5 [zm lo hi]
  `(if (<= (:version ~zm) 3)
       ~lo
       ~hi))

(defmacro v4-5 [zm lo hi]
  `(if (<= (:version ~zm) 4)
       ~lo
       ~hi))

(defn bit-slice [value base width]
  (let [mask (- (bit-shift-left 1 width) 1)]
    (bit-and mask (bit-shift-right value base))))

(defn threaded-accumulate [threaded accum f list]
  "Given (zm [] f xs) runs (f zm x) for each x, threading the zm through.
  f should expect (zm x) and return [zm' y].
  Accumulates the ys into [], returning [zm ys]."
  (loop [lst list
         acc accum
         t   threaded]
    (if (empty? lst)
      [t acc]
      (let [[t' next] (f t (first lst))]
        (recur (rest lst)
               (conj acc next)
               t')))))


