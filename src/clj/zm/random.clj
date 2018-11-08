(ns zm.random
  "Interface for random number generation. Clojure-specific since it uses the
  java.util.Random PRNG.")

(defn mkrandom
  ([]     (java.util.Random.))
  ([seed] (java.util.Random. seed)))

(defn random [r max]
  "Returns a random number in the range [1..max]."
  (let [i (.nextInt r)]
    (inc (mod i max))))

