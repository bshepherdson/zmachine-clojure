(ns zm.driver
  "I wrap the generic Z-machine engine with re-frame functionality."
  (:require [zm.decoding :refer [decode]]))

(def max-opcodes-per-block 100)

(defn tick-zm [zm]
  "Runs a block of Z-machine opcodes, returning the final state.
  Aborts after max-opcodes-per-block opcodes, or if the state is not :running."
  (if (not= :running (:state zm))
    zm
    (loop [zm zm
           n  0]
      (let [zm (decode zm)
            n  (inc n)]
        (cond
          (>= n max-opcodes-per-block) zm
          (not= :running (:state zm))  zm
          :else (recur zm n))))))
