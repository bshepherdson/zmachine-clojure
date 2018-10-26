(ns zm.decoding
  "High-level opcode handling that breaks down and calls a single instruction."
  (:require [zm.memory :refer :all]
            [zm.variables :as v]
            [zm.ops0OP :as ops0OP]
            [zm.ops1OP :as ops1OP]
            [zm.ops2OP :as ops2OP]
            [zm.opsVAR :as opsVAR]
            [zm.opsEXT :as opsEXT]
            [zm.util :refer [bit-slice threaded-accumulate]]))


;; Reading operands by their types.
;; These all return [zm value], with PC advanced and so on.
(defn operand-large-constant [zm] (rwpc+ zm))
(defn operand-small-constant [zm] (rbpc+ zm))
(defn operand-var [zm]
  (let [[zm' number] (rbpc+ zm)]
    (v/rvar zm' number)))

(defn operand-by-type [zm type]
  ((case type
    0 operand-large-constant
    1 operand-small-constant
    2 operand-var)
   zm))


;; Basic decoders, by format.
;; There are four and a half forms:
;; - short (0 or 1 ops)
;; - long (2 ops)
;; - variable (byte of types)
;;   - variable-long (second byte of types)
;; - extended form (same as variable; no long)

(defn decode-short-form [zm opcode]
  "Opcode is the byte. bits 4 and 5 give the type.
  If it's $$11 then it's a 0OP; otherwise 1OP.
  Opcode number is bottom four bits."
  (let [opnum (bit-slice opcode 0 4)
        type  (bit-slice opcode 4 2)
        [zm arg] (if (= type 3)
                   [zm nil]
                   (operand-by-type zm type))]
    (if (= type 3)
      (ops0OP/run zm opnum)
      (ops1OP/run zm opnum arg))))


(defn- decode-long-arg [zm bit]
  ((if bit
     operand-var
     operand-small-constant) zm))

(defn decode-long-form [zm opcode]
  "Always 2OP. Arg types are in bits 6 and 5; opcode bottom 5."
  (let [opnum (bit-slice opcode 0 5)
        t1    (bit-test  opcode 6)
        t2    (bit-test  opcode 5)
        [zm a1] (decode-long-arg zm t1)
        [zm a2] (decode-long-arg zm t2)]
    (ops2OP/run zm opnum a1 a2)))


;; Variable form helpers
(defn- decode-type-byte [zm]
  (let [[zm b] (rbpc+ zm)
        types (map #(bit-slice b % 2) [6 4 2 0])]
    [zm types]))

(defn- decode-variable-types [zm long?]
  (let [[zm t1] (decode-type-byte zm)]
    (if long?
      (let [[zm t2] (decode-type-byte zm)]
        [zm (concat t1 t2)])
      [zm t1])))


(defn- read-variable-args [zm types]
  (threaded-accumulate zm []
                       operand-by-type
                       (take-while #(< % 3) types)))

(defn decode-variable-form [zm opcode]
  "Next byte is the first of operands.
  Opcode is in the bottom 5 bits. If bit 5 is 0, 2OP, otherwise VAR.
  If the opcode is 12 or 26, it's a long call and there's a second type byte
  right after the first one, followed by all the arguments."
  (let [opnum      (bit-slice opcode 0 5)
        var?       (bit-test opcode 5)
        long-call? (or (= opnum 12) (= opnum 26))
        [zm types] (decode-variable-types zm long-call?)
        [zm args]  (read-variable-args zm types)]
    (if var?
      (opsVAR/run zm opnum args)
      (ops2OP/run zm opnum (first args) (second args)))))

(defn decode-extended-form [zm]
  "Next byte gives the real opcode, then it's like the basic variable form."
  (let [[zm opnum] (rbpc+ zm)
        [zm types] (decode-variable-types zm false)
        [zm args]  (read-variable-args zm types)]
    (opsEXT/run zm opnum args)))


(defn decode [zm]
  "Decode and execute a single instruction.
  If the top two bits are $$11 it's variable form.
  If $$10, short.
  If the opcode is exactly 0xbe and the version is 5+, extended.
  Otherwise, long."
  (let [[zm opcode] (rbpc+ zm)
        top-bits    (bit-slice opcode 6 2)]
    (cond (= top-bits 3) (decode-variable-form zm opcode)
          (and (>= (:version zm) 5)
               (= 0xBE opcode))    (decode-extended-form zm)
          (= top-bits 2) (decode-short-form    zm opcode)
          :else (decode-long-form zm opcode))))

