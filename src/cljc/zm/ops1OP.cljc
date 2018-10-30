(ns zm.ops1OP
  "1OP operations"
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

(defn- incdec [zm var]
 (let [[zm value] (v/rvar zm var)]
   (v/wvar zm var (inc value))))


(def ops
  [; jz a ?branch - Jump if zero
   #(zbranch %1 (= 0 %2))

   ; get_sibling obj -> result ?branch
   ; Get the object number of the given object's sibling, storing it.
   ; Branch if found.
   (fn [zm num]
     (let [obj (o/object zm num)
           sib (o/rsibling zm obj)]
       (-> zm
           (zstore sib)
           (zbranch (not= sib 0)))))

   ; get_child obj -> result ?branch
   ; Get the object number of the given object's child, storing it.
   ; Branch if it exists.
   (fn [zm num]
     (let [obj   (o/object zm num)
           child (o/rchild zm obj)]
       (-> zm
           (zstore child)
           (zbranch (not= child 0)))))

   ; get_parent obj -> result
   ; Get the object number of the given object's parent, storing it.
   ; NB: This version doesn't branch, like the others.
   (fn [zm num]
     (zstore zm (o/rparent zm (o/object zm num))))

   ; get_prop_len property-address -> result
   ; Gets the length in bytes of the property whose DATA FIELD is pointed at.
   (fn [zm *data]
     (let [*prop (o/data->prop zm *data)]
       (zstore zm (o/prop-len zm *prop))))

   ; inc (variable)
   ; Given the number of a variable, increment it.
   #(incdec %1 %2 1)
   ; dec (variable)
   ; Given the number of a variable, decrement it.
   #(incdec %1 %2 -1)

   ; print_addr byte-address
   ; Prints the string at the given byte address.
   #(p/print (str/read-ra %1 %2))

   ; call_1s routine -> result
   ; Call, no arguments, store results.
   #(zcall %1 (pa-routines %1 %2) [] true)

   ; remove_obj object
   ; Removes this object from the tree.
   #(o/remove-obj %1 %2)

   ; print_obj object
   ; Prints the short name of the given object.
   #(p/print (str/read-ra %1 (o/short-name %1 (o/object %1 %2))))

   ; ret value
   ; Returns the given value.
   #(zreturn %1 %2)

   ; jump ?label
   ; Jumps unconditionally to the given label. This is *not* a branch!
   ; The label is a signed word to apply to the PC.
   ; The destination is Address after this instruction + offset - 2, like a
   ; branch.
   #(update %1 :pc + (signed %2) -2)

   ; print_paddr addr
   #(p/print (str/read-ra %1 (pa-string %1 %2)))

   ; load var -> result
   ; Loads the variable whose number is given, and stores it.
   (fn [zm var]
     (let [[zm value] (v/rvar zm var)]
       (zstore zm value)))

   ; v4: not value -> result
   ; v5: call_1n routine
   (fn [zm value]
     (v4-5 zm
           (zstore zm (bit-and 0xffff (bit-not value)))
           (zcall  zm (pa-routines zm value) [] false)))

  ])

(defn run [zm opnum arg] ((nth ops num) zm arg))

