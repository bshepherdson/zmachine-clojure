(ns zm.opsEXT
  "EXT operations"
  (:require [zm.memory :refer :all]
            [zm.printing :as p]
            [zm.variables :as v]
            [zm.helpers :refer :all]))

(def ops
  [; save table bytes name prompt -> result
   (fn [zm args]
     ; TODO Handle the other parameters for this instruction.
     ; TODO Implement save/restore.
     (zstore zm 0)) ; 0 = failure

   ; restore table bytes name prompt -> result
   (fn [zm args]
     ; TODO Handle the other parameters for this instruction.
     ; TODO Implement save/restore.
     (zstore zm 0)) ; 0 = failure

   ; log_shift number places -> result
   (fn [zm [num places]]
     (let [result (if (pos? places)
                    (bit-shift-left num places)
                    (unsigned-bit-shift-right num (- places)))]
       (zstore zm result)))

   ; art_shift number places -> result
   (fn [zm [num places]]
     (let [result (if (pos? places)
                    (bit-shift-left num places)
                    (bit-shift-right (signed num) (- places)))]
       (zstore zm result)))

   ; set_font font -> result
   ; TODO Implement screen model and font rendering.
   (fn [zm [font]]
     ; If we don't support the requested font, return 0.
     (zstore zm 0))

   nil  ; draw_picture  - v6
   nil  ; picture_data  - v6
   nil  ; erase_picture - v6
   nil  ; set_margins   - v6

   ; save_undo -> result
   (fn [zm args]
     ; TODO Implement undo functionality.
     (zstore zm -1))
   ; restore_undo -> result
   (fn [zm args]
     ; TODO Implement undo functionality.
     (zstore zm -1))

   ; print_unicode char-number
   (fn [zm [c]]
     (p/print (str (char c)))
     zm)

   ; check_unicode char-number
   ; Blindly assumes that everything is fine; trusting the browser.
   (fn [zm [c]]
     (zstore zm 3))

   ; set_true_colour fg bg
   (fn [zm [fg bg]]
     ; TODO Implement screen model and true colours.
     zm)

   ; Blanks and v6 are all that's left.
   ])

(defn run [zm opnum args] ((nth ops opnum) zm args))


