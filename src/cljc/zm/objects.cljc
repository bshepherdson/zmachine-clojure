(ns zm.objects
  "Managing the Z-machine object tree."
  #?(:cljs (:require-macros [zm.util :refer [v3-5]]))
  (:require [zm.memory :refer :all]
            [zm.header :as hdr]
            [zm.util :refer [bit-slice]]
            #?(:clj [zm.util :refer [v3-5]])))

(defn- object-table [zm]
  (rw zm hdr/*object-table))

(defn property-default [zm prop]
  "Returns the default property value for the given property."
  (rw zm (+ (object-table zm)
            (* 2 (dec prop)))))

(defn- prop-count [zm] (v3-5 zm 31 63))

(defn- first-object [zm]
  "Returns the address of object 1 in the tree."
  (+ (object-table zm)
     (* 2 (prop-count zm))))


(defn- object-size [zm] (v3-5 zm 9 14))

(defn- rrelative [zm object relation]
  (v3-5 zm
        (let [offset (relation {:parent 4 :sibling 5 :child 6})]
          (rb zm (+ object offset)))
        (let [offset (relation {:parent 6 :sibling 8 :child 10})]
          (rw zm (+ object offset)))))

(defn- wrelative [zm object relation value]
  (v3-5 zm
        (let [offset (relation {:parent 4 :sibling 5 :child 6})]
          (wb zm (+ object offset) value))
        (let [offset (relation {:parent 6 :sibling 8 :child 10})]
          (ww zm (+ object offset) value))))


(defn object [zm number]
  "Returns the address of the Z-machine object with the given number."
  (+ (first-object zm)
     (* (object-size zm)
        (dec number))))


(defn rparent [zm object]
  "Returns the NUMBER of this object's parent, or 0 if none."
  (rrelative zm object :parent))
(defn rsibling [zm object]
  "Returns the NUMBER of this object's sibling, or 0 if none."
  (rrelative zm object :sibling))
(defn rchild [zm object]
  "Returns the NUMBER of this object's child, or 0 if none."
  (rrelative zm object :child))

(defn wparent [zm object value]
  "Write this object's parent to be the given value."
  (wrelative zm object :parent value))
(defn wsibling [zm object value]
  "Write this object's sibling to be the given value."
  (wrelative zm object :sibling value))
(defn wchild [zm object value]
  "Write this object's child to be the given value."
  (wrelative zm object :child value))


; Two helpers for remove-obj.
(defn- remove-obj-elder-sibling [zm num *obj *p]
  "Work through the sibling chain until the next sibling is the target object."
  (loop [*sib (object zm (rchild zm *p))]
    (let [next-sib (rsibling zm *sib)]
      (when (= 0 next-sib) (throw (Exception. "Can't happen: I'm not in my parent's child list")))
      (if (= next-sib num)
        ; Found myself, so update things.
        (-> zm
            (wsibling *sib (rsibling zm *obj)) ; Remove me from the sibling chain
            (wsibling *obj 0) ; Remove my sibling.
            (wparent  *obj 0) ; Remove my parent
            )
        ; Not found, so keep chaining.
        (recur (object zm next-sib))))))

(defn- remove-obj-direct-child [zm *obj *p]
  "My sibling becomes the new direct child."
  (let [sib (rsibling zm *obj)]
    (-> zm
        (wparent  *obj 0) ; Remove my parent.
        (wsibling *obj 0) ; Remove my sibling
        (wchild  *p   sib))))


(defn remove-obj [zm num]
  "There's a bunch of possibilities here.
  I may be the direct child of my parent, or I'm in the sibling chain.
  My children come with me."
  (let [*obj (object zm num)
        pnum (rparent zm *obj)
        *p   (when (not= 0 pnum) (object zm pnum))]
    (cond
      (= pnum 0) zm ; I have no parent, it's already done.
      ; Direct child?
      (= num (rchild zm *p)) (remove-obj-direct-child zm *obj *p)
      ; I'm a sibling.
      :else (remove-obj-elder-sibling zm num *obj *p))))

(defn insert-obj [zm num dest-num]
  "Removes object num from the tree, then makes it the first child of dest."
  (let [*obj    (object zm num)
        *dest   (object zm dest-num)
        child   (rchild zm *dest)]
    (-> zm
        (remove-obj num)
        (wsibling *obj  child)
        (wparent  *obj  dest-num)
        (wchild   *dest num))))


;; Working with properties.
(defn prop-table [zm *obj]
  "Gets the pointer to the start of the property table."
  (rw zm (+ *obj
            (v3-5 zm 7 12))))

(defn short-name [zm *obj]
  "Returns the address of the object's short name."
  (inc (prop-table zm *obj)))

(defn first-prop [zm *obj]
  "The byte at prop-table gives the number of words in the short name."
  (let [*pt (prop-table zm *obj)
        b   (rb zm *pt)]
    (+ *pt
       1
       (* 2 b))))

(defn data->prop [zm *data]
  "Given a pointer to the data field of a property, work backward to point at
  the property entry."
  ; In v3, there's always just the one byte. In v4+ there might be two, with bit
  ; 7 set in both bytes if there are two.
  (let [b       (rb zm (dec *data))
        back-2? (and (>= (:version zm) 4)
                     (bit-test b 7))]
    (- *data
       (if back-2? 2 1))))

(defn prop->data [zm *prop]
  ; In v3, there's always just the one byte.
  ; In v4+, there's two if the first bit is set.
  (let [b (rb zm *prop)]
    (if (or (<= (:version zm) 3)
            (not (bit-test b 7)))
      (inc *prop)
      (+ *prop 2))))

(defn prop-len [zm *prop]
  "Given a property block pointer, returns its data length in bytes."
  (v3-5 zm
        ; v3: single header byte, dddppppp where ddd = length-1
        (let [b (rb zm *prop)]
          (inc (bit-slice b 5 3)))
        ; v4: one byte if bit 7 clear, two if set.
        ; With 1, bit 6 clear means length 1, set means 2.
        ; With 2, the second byte's lower 6 bits give the length.
        ;   NB: 0 should be read as 64.
        (let [b (rb zm *prop)]
          (if (bit-test b 7)
            (let [len (bit-slice (rb zm (inc *prop)) 0 6)]
              (if (= 0 len)
                64
                len))
            (if (bit-test b 6)
              2
              1)))))


(defn prop-number [zm *prop]
  "Returns the property number given a property header.
  It's either the bottom 5 or 6 bits of the first header byte."
  (bit-slice (rb zm *prop) 0 (v3-5 zm 5 6)))


(defn next-prop [zm *prop]
  "Given the address of a prop header, returns that of the next prop."
  (+ (prop->data zm *prop)
     (prop-len zm *prop)))

(defn find-prop [zm *obj num]
  "Returns *prop if the property with that number is found, and nil if not."
  (loop [*prop (first-prop zm *obj)]
    (let [pnum (prop-number zm *prop)]
      (cond
        (= pnum num) *prop
        (< pnum num) nil  ; They're in descending order, so if we find one
                          ; smaller than the target, we're done.
        :else (recur (next-prop zm *prop))))))


;; Attributes
; Attributes are in 4 or 6 leading bytes. They're numbered from 0, left to
; right.

(defn- attr-byte [attr] (bit-shift-right attr 3))
(defn- attr-bit  [attr] (- 7 (bit-and 7 attr)))

(defn test-attr [zm *obj attr]
  (let [b (rb zm (+ *obj (attr-byte attr)))]
    (bit-test b (attr-bit attr))))

(defn set-attr [zm *obj attr]
  (let [*b (+ *obj (attr-byte attr))
        b  (rb zm *b)]
    (wb zm *b (bit-set b (attr-bit attr)))))

(defn clear-attr [zm *obj attr]
  (let [*b (+ *obj (attr-byte attr))
        b  (rb zm *b)]
    (wb zm *b (bit-clear b (attr-bit attr)))))

