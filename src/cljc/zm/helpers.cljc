(ns zm.helpers
  "I contain 'helper' functions for routine calls and returns, branching, etc."
  (:require [zm.memory :refer :all]
            [zm.variables :as v]
            [zm.util :refer [bit-slice]]))

(defn signed
  "Signs the value by treating it as 2's complement with the given number
  of bits. Defaults to 16 bits."
  ([value] (signed value 16))
  ([value bits]
   (let [base  (bit-shift-left 1 bits)
         value (bit-and (dec base) value) ; Mask out any extra bits.
         neg?  (bit-test value (dec bits))] ; It's negative if the top bit is 1.
     (if neg?
       (- value base)
       value))))


(defn zstore [zm value]
  (let [[zm b] (rbpc+ zm)]
    (v/wvar zm b value)))


;; TODO Routine calls go here (branching uses them).
(defn zreturn [zm value] zm)



(defn- branch-offset-long [zm b]
  (let [[zm b2]  (rbpc+ zm)
        unsigned (bit-or (bit-shift-left (int (bit-and b 63))
                                         8)
                         b2)]
    [zm (signed unsigned 14)]))


(defn- branch-offset [zm b]
  (let [short?  (bit-test b 6)]
    (if short?
      [zm (bit-and 63 b)]
      (branch-offset-long zm b))))

(defn zbranch [zm flag]
  "Branches come in two forms: short and long.
  If bit 6 is set, it's one byte only, offset 0-63 in the low 6 bits.
  If bit 6 is clear, offset is a signed 14-bit number.
  An offset of 0 means return false; 1 means return true.
  Otherwise the PC moves to:
    Address after the branch + offset - 2.
  The branch is taken when the flag and bit 7 match."
  (let [[zm b] (rbpc+ zm)
        neg?   (bit-test b 7)
        [zm offset] (branch-offset zm b)
        true-flag (if (= 0 flag)
                    false
                    (boolean flag))
        do-branch? (= (boolean neg?) true-flag)] ; 0 is truthy in Clojure!
    (if do-branch?
      (case offset
        0 (zreturn zm 0) ; Special cases: return false and true.
        1 (zreturn zm 1)
        (update zm :pc + (- offset 2)))
      zm)))


;; TODO Tests for all these helpers.
;;
;; Routine calls for the rest.
