(ns zm.ops0OP
  "0OP operations"
  #?(:cljs (:require-macros [zm.util :refer [v4-5]]))
  (:require [zm.memory :refer :all]
            [zm.printing :as p]
            [zm.variables :as v]
            [zm.strings :as str]
            [zm.zmachine :refer [read-file]]
            [zm.helpers :refer :all]
            #?(:clj [zm.util :refer [v4-5]])
            ))

(defn- print-literal [zm]
  (p/print (str/read-ra zm (:pc zm)))
  (update zm :pc + (* 2 (str/length-words zm (:pc zm)))))

(defn- save-early [zm]
  "v3 and below this is a branch (branch on success)
  v4 is a store (0 for failure)
  v5+ it's illegal."
  (case (:version zm)
    5 (illegal-opcode "save (early)" zm)
    4 (zstore zm 0)
    (zbranch false)))

(defn- restore-early [zm]
  "v3 and below is a branch, branching on success.
  v4 is a store, 0 for failed.
  v5 is illegal."
  (case (:version zm)
    5 (illegal-opcode "restore (early)" zm)
    4 (zstore zm 0)
    (zbranch false)))

(def ops
  [; rtrue
   #(zreturn % 1)

   ; rfalse
   #(zreturn % 0)

   ; print (literal)
   print-literal

   ; print_ret
   (fn [zm]
     (let [zm (print-literal zm)
           _  (p/newline)]
       (zreturn zm 1)))

   ; nop
   (fn [zm] zm)

   ; save
   ; TODO Implement save/restore
   save-early

   ; restore
   ; TODO Implement save/restore
   restore-early

   ; restart
   ; This is essentially a new game.
   ; TODO Preserve the two things that survive:
   ; - Transcribing to the printer bit (bit 0 in Flags 2)
   ; - Use fixed pitch font bit (bit 1 of Flags 2)
   #(read-file (:rom %))

   ; ret_popped
   ; Pops TOS and returns it.
   (fn [zm]
     (let [[zm value] (v/zpop zm)]
       (zreturn zm value)))

   ; v1-4: pop   - Throws away the top of the stack.
   ; v5+:  catch - Stores the current "stack frame".
   (fn [zm]
     (v4-5 zm
           (first (v/zpop zm)) ; pop
           (zstore zm (frame-depth zm)))) ; catch

   ; quit
   (fn [_]
     (p/println "Quitting. Good-bye.")
     nil)

   ; new_line
   (fn [zm]
     (p/newline)
     zm)

   ; show_status
   ; TODO Implement me.
   (fn [zm] zm)

   ; verify ?branch
   ; TODO Implement me properly.
   #(zbranch % true)

   ; first byte of the extended opcode
   ; Can't happen in v5.
   (fn [zm]
       (illegal-opcode zm "extended opcode"))

   ; piracy ?branch
   ; Gullibly branch all the time.
   #(zbranch % true)
   ])

(defn run [zm num] ((nth ops num) zm))
