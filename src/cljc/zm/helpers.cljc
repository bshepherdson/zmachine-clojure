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


;; Routine state
;; =============
;;
;; Routine calls nest and form a linked list of stack frames.
;; Each frame contains:
;; {:locals - Vector of locals
;;  :stack  - Sequence of stacked values, TOS is (first ...).
;;  :chain  - Holds the previous frame (or nil).
;;  :return-expected? - Boolean
;;  :old-pc - PC to return to.
;;  :arg-count - The number of args I was called with - needed for one opcode.
;;  }
;;
;; There's no true frame pointer or stack pointer. Throw needs to return a
;; singular value which can be stored in a variable and names a stack frame;
;; it can be the depth of that frame. This corresponds with Quetzal's
;; requirements.
(defn frame-depth [zm]
  (loop [depth 0
         f (:frame zm)]
    (if f
      (recur (inc depth) (:chain f))
      depth)))

; Returning from a routine means popping the frame, setting PC, and returning if
; expected.
(defn zreturn [zm value]
  (let [f       (:frame zm)
        return? (:return-expected? f)
        pc      (:old-pc f)
        zm      (assoc zm :frame (:chain f)
                          :pc    pc)]
    (if return?
      (zstore zm value)
      zm)))


(defn- prepare-locals [zm n]
  "Prepares n local slots, and reads that many locals.
  v5+ they're all 0; v4 and under we read that many words."
  (let [zm (assoc-in zm [:frame :locals] (vec (repeat n 0)))]
    (if (>= (:version zm) 5)
      zm ; Already done.
      (reduce #(let [[zm w] (rwpc+ %1)]
                 (v/wlocal zm %2 w))
              zm
              (range 1 (inc n))))))

; Calling a routine is quite a bit more involved.
; We expected a real address for the routine, and a seq of args.
; Routines begin with a byte giving the number of locals (maybe 0).
; In v1-4, that many 2-byte values follow.
; In v5+, initial values are all 0.
(defn zcall [zm addr args return?]
  (let [f {:old-pc (:pc zm)
           :chain  (:frame zm)
           :return-expected? return?
           :arg-count (count args)
           :stack []}
        zm (assoc zm
                  :pc addr
                  :frame f)
        [zm nLocals] (rbpc+ zm)
        zm (prepare-locals zm nLocals)]
    (reduce (fn [zm [n val]] (v/wlocal zm n val))
            zm
            (map vector
                 (range 1 (inc nLocals))
                 args))))




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

