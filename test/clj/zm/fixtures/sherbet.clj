(ns zm.fixtures.sherbet
  "Loads the sherbet.z5 story file and returns a fresh Z-machine."
  (:require [zm.zmachine  :as z]
            [zm.files :as f]))

(defn sherbet []
  (z/read-file (f/read-story-file "games/sherbet/sherbet.z5")))

