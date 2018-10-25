(ns zm.fixtures.zork
  "Loads the Zork1.z5 story file and returns a fresh Z-machine."
  (:require [zm.zmachine  :as z]
            [zm.files :as f]))

(defn zork []
  (z/read-file (f/read-story-file "games/zork1/Zork1.z5")))

