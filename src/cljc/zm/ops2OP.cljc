(ns zm.ops2OP
  "2OP operations"
  #?(:cljs (:require-macros [zm.util :refer [v4-5]]))
  (:require [zm.memory :refer :all]
            [zm.printing :as p]
            [zm.variables :as v]
            [zm.strings :as str]
            [zm.objects :as o]
            [zm.zmachine :refer [read-file]]
            [zm.helpers :refer :all]
            #?(:clj [zm.util :refer [v4-5]])
            ))

(defn- math [f]
  (fn [zm a b]
    (zstore zm (f (signed a) (signed b)))))

(defn- divmod [extractor]
  ; Clojure's built-in quot is fine, but mod isn't.
  (fn [zm a b]
    (let [sa (signed a)
          sb (signed b)
          q  (quot sa sb)
          ; The remainder is a - q*b.
          r  (- sa (* q sb))]
      (zstore zm (extractor [q r])))))

(defn- incdec_chk [zm var value delta comparison]
  (let [[zm original] (v/rvar zm var)
        adjusted      (+ original delta)
        check         (comparison (signed adjusted) (signed value))]
    (-> zm
        (v/wvar var adjusted)
        (zbranch check))))

(def ops
  [; 0 DNE
   nil

   ; je a b ?label
   ; Branch if the values are equal.
   #(zbranch %1 (= %2 %3))

   ; jl a b ?label
   ; Branch if a < b, as signed values.
   #(zbranch %1 (= (< (signed %2) (signed %3))))

   ; jg a b ?label
   ; Branch if a > b, as signed values.
   #(zbranch %1 (= (> (signed %2) (signed %3))))

   ; dec_chk var value ?label
   ; Decrement the value stored in variable var.
   ; Branch if it's now (signed) less than value.
   #(incdec_chk %1 %2 %3 -1 <)

   ; inc_chk var value ?label
   ; Decrement the value stored in variable var.
   ; Branch if it's now (signed) less than value.
   #(incdec_chk %1 %2 %3 1 >)

   ; jin obj1 obj2 ?label
   ; Jump if obj1 is a direct child of obj2; that is parent(a) == b.
   #(zbranch %1 (= (o/rparent %1 (o/object %1 %2))
                   %3))

   ; test bitmap flags ?label
   ; Jump if all the flags in bitmap are set; ie. bitmap & flags == flags
   #(zbranch %1 (= %3 (bit-and %2 %3)))

   ; or a b -> result
   ; Bitwise or.
   #(zstore %1 (bit-or %2 %3))

   ; and a b -> result
   ; Bitwise and
   #(zstore %1 (bit-and %2 %3))

   ; test_attr obj attr ?label
   ; Branches if the given object has the given attribute.
   #(zbranch %1 (o/test-attr %1 (o/object %1 %2) %3))

   ; set_attr obj attr
   ; Sets the given attribute on this object.
   #(o/set-attr %1 (o/object %1 %2) %3)

   ; clear_attr obj attr
   ; Clears the given attribute on this object.
   #(o/clear-attr %1 (o/object %1 %2) %3)

   ; store var value
   ; Stores the given value into the given variable number.
   v/wvar

   ; insert_obj obj dest
   ; Removes obj from the object tree, then adds it as the first child of dest.
   o/insert-obj

   ; loadw array word-index -> result
   #(zstore %1 (rw %1 (+ %2 (* 2 %3))))

   ; loadb array byte-index -> result
   #(zstore %1 (rb %1 (+ %2 %3)))

   ; get_prop obj prop -> result
   ; Fetches the object's value for this property, which must have size 1 or 2.
   ; Fetches the default value if the object does not define this property.
   (fn [zm obj prop]
     (zstore zm
       (let [*obj  (o/object zm obj)
             *prop (o/find-prop zm *obj prop)]
         (if *prop
           ((if (= 1 (o/prop-len zm *prop)) rb rw)
            zm
            (o/prop->data zm *prop))

           ; Look up the default.
           (o/property-default zm prop)))))

   ; get_prop_addr obj prop -> result
   ; Stores the DATA address for the given property.
   (fn [zm obj prop]
     (let [*obj  (o/object zm obj)
           *prop (o/find-prop zm *obj prop)]
       (if *prop
         (zstore zm (o/prop->data zm *prop))
         (zstore zm 0))))

   ; get_next_prop obj prop -> result
   ; Gets the number of the next property.
   (fn [zm obj prop]
     (let [*obj  (o/object zm obj)
           *prop (o/find-prop zm *obj prop)]
       (zstore zm (o/prop-number zm (o/next-prop zm *prop)))))

   ; add a b -> result
   (math +)
   ; sub a b -> result
   (math -)
   ; mul a b -> result
   (math *)
   ; div a b -> result
   (divmod first)
   ; mod a b -> result
   (divmod second)

   ; call_2s routine arg1 -> result
   #(zcall %1 (pa-routines %1 %2) [%3] true)
   ; call_2n routine arg1
   #(zcall %1 (pa-routines %1 %2) [%3] false)

   ; set_colour fg bg
   #(%1) ; TODO Implement me
   ])

(defn run [zm opnum a b] ((nth ops num) zm a b))
