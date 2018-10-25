(ns zm.initialization
  "Initialization for the story header."
  (:require [zm.color :as color]
            [zm.header :refer :all]
            [zm.memory :refer :all]
            [zm.util :refer [v3-5]]))

(defn init-flags1 [zm]
  "Sets the flags1 field properly."
  (v3-5 zm
        (mb zm *flags1 #(bit-or (bit-and % 2r01110000) 2r01000000))
        (wb zm *flags1 2r00011101))) ; Fixed-width, italic, bold, colour.

(defn init-flags2 [zm]
  "Sets the flags2 properly."
  (mw zm *flags2 #(bit-and % 2r001000111)))

; Versions 6 and 7 have string and routine offsets.
(defn init-offsets [zm]
  (let [routines (rw zm *routines-offset)
        strings  (rw zm *strings-offset)
        needed   (< 5 (:version zm) 8)]
    (-> zm
        (assoc :strings-offset  (if needed strings  0))
        (assoc :routines-offset (if needed routines 0)))))


(defn init [zm]
  "Modifies a fresh Z-machine with its initial parameters."
  (-> zm
      init-flags1
      init-flags2
      init-offsets
      (wb *height-lines 255) ; "infinite"
      (wb *width-chars  80) ; TODO Adjust me based on the actual size.
      (ww *width-units  80)
      (ww *height-units 255)
      (wb *font-width-units 1)
      (wb *font-height-units 1)
      (wb *default-bg color/white)
      (wb *default-fg color/black))) ; TODO Standard revision, when plausible.
