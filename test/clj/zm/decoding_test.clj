(ns zm.decoding-test
  (:require [clojure.test :refer :all]
            [zm.memory :refer :all]
            [zm.decoding :as sut]
            [zm.variables :as v]
            [zm.ops0OP :as ops0OP]
            [zm.ops1OP :as ops1OP]
            [zm.ops2OP :as ops2OP]
            [zm.opsVAR :as opsVAR]
            [zm.opsEXT :as opsEXT]
            [zm.fixtures.quick-story :as q]))

(defn zapply [atom-zm & rest]
  (apply swap! atom-zm rest))


(deftest test-operand-large-constant
  (let [zm (atom (-> (q/basics 5)
                     (q/cw 0x1234)
                     (q/cw 0x5678)))]
    (is (= (:pc @zm) 0x4000))
    (is (= 0x1234 (q/for-result zm sut/operand-large-constant)))
    (is (= (:pc @zm) 0x4002))))

(deftest test-operand-small-constant
  (let [zm (atom (-> (q/basics 5)
                     (q/cw 0x1234)
                     (q/cw 0x5678)))]
    (is (= (:pc @zm) 0x4000))
    (is (= 0x12   (q/for-result zm sut/operand-small-constant)))
    (is (= (:pc @zm) 0x4001))))

(deftest test-operand-var-pop
  (let [zm (atom (-> (q/basics 5)
                     (q/cb 0) ; Var 0 = pop stack
                     (assoc :frame {:stack [17 19]})))]
    (is (= (:pc @zm) 0x4000))
    (is (= 17  (q/for-result zm sut/operand-var)))
    (is (= (:pc @zm) 0x4001))
    (is (= (get-in @zm [:frame :stack]) (seq [19])))))

(deftest test-operand-var-local
  (let [zm (atom (-> (q/basics 5)
                     (q/cb 3) ; Var 3 = local 2
                     (assoc :frame {:locals [1 2 3 4]})))]
    (is (= (:pc @zm) 0x4000))
    (is (= 3  (q/for-result zm sut/operand-var)))
    (is (= (:pc @zm) 0x4001))))

(deftest test-operand-var-global
  (let [zm (atom (-> (q/basics 5)
                     (q/cb 24) ; Var 24 = a global
                     (v/wvar 24 212)))]
    (is (= (:pc @zm) 0x4000))
    (is (= 212  (q/for-result zm sut/operand-var)))
    (is (= (:pc @zm) 0x4001))))



;; Now decoding full instructions.
(deftest test-decode-short-form
  ; Short form starts with $$10. Bits 4 and 5 give an operand type.
  ; Opcode number is in the bottom 4 bits.
  (let [opcode 2r10000110 ; short form, op 6, large constant
        zm (atom (-> (q/basics 5)
                     (q/compile [opcode 0xDE 0xAD])))]
    (is (= 0x4000 (:pc @zm)))
    (is (= opcode (q/for-result zm rbpc+))) ; Read the byte.
    (is (= 0x4001 (:pc @zm)))
    (with-redefs [ops1OP/run (fn [zm opnum arg] [zm [opnum arg]])]
      (is (= [6 0xDEAD] (q/for-result zm sut/decode-short-form opcode))))
    (is (= 0x4003 (:pc @zm))))

  (let [opcode 2r10010110 ; short form, op 6, small constant
        zm (atom (-> (q/basics 5)
                     (q/compile [opcode 0xDE 0xAD])))]
    (is (= 0x4000 (:pc @zm)))
    (is (= opcode (q/for-result zm rbpc+))) ; Read the byte.
    (is (= 0x4001 (:pc @zm)))
    (with-redefs [ops1OP/run (fn [zm opnum arg] [zm [opnum arg]])]
      (is (= [6 0xDE] (q/for-result zm sut/decode-short-form opcode))))
    (is (= 0x4002 (:pc @zm))))

  (let [opcode 2r10110110 ; short form, op 6, no argument.
        zm (atom (-> (q/basics 5)
                     (q/compile [opcode 0xDE 0xAD])))]
    (is (= 0x4000 (:pc @zm)))
    (is (= opcode (q/for-result zm rbpc+))) ; Read the byte.
    (is (= 0x4001 (:pc @zm)))
    (with-redefs [ops0OP/run (fn [zm opnum] [zm opnum])]
      (is (= 6 (q/for-result zm sut/decode-short-form opcode))))
    (is (= 0x4001 (:pc @zm)))))

(deftest test-decode-long-form
  (let [opcode 2r00110110 ; long form, op 22, args small constant and var.
        zm (atom (-> (q/basics 5)
                     (q/compile [opcode 0xDE 24])
                     (v/wvar 24 212)))]
    (is (= 0x4000 (:pc @zm)))
    (is (= opcode (q/for-result zm rbpc+))) ; Read the byte.
    (is (= 0x4001 (:pc @zm)))
    (with-redefs [ops2OP/run (fn [zm opnum a b] [zm [opnum a b]])]
      (is (= [22 0xDE 212] (q/for-result zm sut/decode-long-form opcode))))
    (is (= 0x4003 (:pc @zm)))))

(deftest test-decode-type-byte
  (let [types 2r00011011 ; types: large, small, var, omitted.
        zm (atom (-> (q/basics 5)
                     (q/cb types)))]
    (is (= 0x4000 (:pc @zm)))
    (is (= (seq [0 1 2 3])
          (q/for-result zm #'sut/decode-variable-types false)))
    (is (= 0x4001 (:pc @zm))))
  (let [types1 2r00011011 ; types: large, small, var, omitted.
        types2 2r10010011 ; types: var, small, large, omitted.
        zm (atom (-> (q/basics 5)
                     (q/cb types1)
                     (q/cb types2)))]
    (is (= 0x4000 (:pc @zm)))
    (is (= (seq [0 1 2 3 2 1 0 3])
          (q/for-result zm #'sut/decode-variable-types true)))
    (is (= 0x4002 (:pc @zm)))))

(deftest test-read-variable-args
  (let [types [0 1 3 3]
        zm    (atom (-> (q/basics 5)
                        (q/cw 0xDEAD)
                        (q/cb 0xFE)))]
    (is (= 0x4000 (:pc @zm)))
    (is (= [0xDEAD 0xFE]
           (q/for-result zm #'sut/read-variable-args types)))
    (is (= 0x4003 (:pc @zm)))))

(deftest test-decode-variable-form
  (let [opcode 2r11100111 ; variable form, VAR, op 7
        zm     (atom (-> (q/basics 5)
                         (q/cb 2r00010110) ; Types: large, small, small, var.
                         (q/cw 0xCAFE)
                         (q/cb 7)
                         (q/cb 9)
                         (q/cb 24)
                         (v/wvar 24 212)))]
    (is (= 0x4000 (:pc @zm)))
    (is (= [7 [0xCAFE 7 9 212]]
           (with-redefs [opsVAR/run (fn [zm num args] [zm [num args]])]
             (q/for-result zm sut/decode-variable-form opcode))))
    (is (= 0x4006 (:pc @zm))))
  (let [opcode 2r11000111 ; variable form, 2OP, op 7
        zm     (atom (-> (q/basics 5)
                         (q/cb 2r00011111) ; Types: large, small, omitted x2
                         (q/cw 0xCAFE)
                         (q/cb 7)))]
    (is (= 0x4000 (:pc @zm)))
    (is (= [7 0xCAFE 7]
           (with-redefs [ops2OP/run (fn [zm num a b] [zm [num a b]])]
             (q/for-result zm sut/decode-variable-form opcode))))
    (is (= 0x4004 (:pc @zm)))))

(deftest test-decode-extended-form
  (let [zm (atom (-> (q/basics 5)
                     (q/cb 0xB4) ; Opcode
                     (q/cb 2r00011111) ; Types: long, short, omitted.
                     (q/cw 0xBEEF)
                     (q/cb 17)))]
    (is (= 0x4000 (:pc @zm)))
    (is (= [0xB4 [0xBEEF 17]]
           (with-redefs [opsEXT/run (fn [zm num args] [zm [num args]])]
             (q/for-result zm sut/decode-extended-form))))
    (is (= 0x4005 (:pc @zm)))))


(deftest test-decode
  (let [opcode  2r11000000  ; Variable form.
        zm (atom (-> (q/basics 5)
                     (q/cb opcode)))]
    (is (= 0x4000 (:pc @zm)))
    (is (= opcode
           (with-redefs [sut/decode-variable-form (fn [zm oc] [zm oc])]
             (q/for-result zm sut/decode))))
    (is (= 0x4001 (:pc @zm))))

  (let [opcode  2r10000000  ; Short form.
        zm (atom (-> (q/basics 5)
                     (q/cb opcode)))]
    (is (= 0x4000 (:pc @zm)))
    (is (= opcode
           (with-redefs [sut/decode-short-form (fn [zm oc] [zm oc])]
             (q/for-result zm sut/decode))))
    (is (= 0x4001 (:pc @zm))))

  (let [opcode  0xBE  ; Extended form.
        zm (atom (-> (q/basics 5)
                     (q/cb opcode)))]
    (is (= 0x4000 (:pc @zm)))
    (is (= 7
           (with-redefs [sut/decode-extended-form (fn [zm] [zm 7])]
             (q/for-result zm sut/decode))))
    (is (= 0x4001 (:pc @zm))))

  (let [opcode  0xBE  ; Would-be extended form, version too low.
                      ; 0xBE = 2r1011 1110, short form.
        zm (atom (-> (q/basics 4)
                     (q/cb opcode)))]
    (is (= 0x4000 (:pc @zm)))
    (is (= 0xBE
           (with-redefs [sut/decode-short-form (fn [zm oc] [zm oc])]
             (q/for-result zm sut/decode))))
    (is (= 0x4001 (:pc @zm))))

  (let [opcode  2r00111011 ; long form
        zm (atom (-> (q/basics 5)
                     (q/cb opcode)))]
    (is (= 0x4000 (:pc @zm)))
    (is (= opcode
           (with-redefs [sut/decode-long-form (fn [zm oc] [zm oc])]
             (q/for-result zm sut/decode))))
    (is (= 0x4001 (:pc @zm)))))
