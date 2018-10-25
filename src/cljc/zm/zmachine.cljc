(ns zm.zmachine
  (:require [zm.initialization :as ini]
            [zm.memory :refer :all]))

;; A general pattern of the Z-machine is that functions take a state as the
;; first parameter.
;; Functions that need to return a value and a modified state do so as a
;; [state, value] pair.
;; These are just conventions, but it helps a lot.
(def max-memory-by-version
  (let [lo  (* 128 1024)
        med (* 256 1024)
        hi  (* 512 1024)]
    {1 lo  2 lo  3 lo
     4 med 5 med
     6 hi  7 hi  8 hi}))

(defn read-file [story-file]
  "Prepares a new Z-machine state with the story file loaded.
  Story-file is a byte array."
  (let [v  (first story-file)
        zm {:version v
            :rom story-file   ; Immutable ROM of the story file.
            :mem {}           ; Overlaid map of changed bytes.
            :frame nil        ; Topmost frame in the stack.
            }]
    (-> zm
        ini/init)))

;; Variable accessors
(defn zpop [zm]
  "Returns a [zm value] pair."
  (let [value  (-> zm :frame :stack first)]
    [(update-in zm [:frame :stack] rest)
     value]))

(defn zpush [zm value]
  (update-in zm [:frame :stack] conj value))

(defn rlocal [zm number]
  "Var numbers from 1 to 15 are locals. They're defined in the topmost frame."
  (-> zm
      :frame
      :locals
      (nth (dec number))))

(defn wlocal [zm number value]
  "Var numbers from 1 to 15 are locals. They're defined in the topmost frame."
  (assoc-in zm [:frame :locals (dec number)] value))

(defn- global-at [zm number]
  (let [offset (* 2 (- number 16))
        table  (globals zm)]
    (+ table offset)))

(defn rglobal [zm number]
    (rw zm (global-at zm number)))
(defn wglobal [zm number value]
    (ww zm (global-at zm number) value))

(defn rvar [zm number]
  "Returns [zm value] (because of push/pop)."
  (cond
       (= 0 number)  (zpop zm)
       (< number 16) [zm (rlocal zm number)]
       :else         [zm (rglobal zm number)]))

(defn wvar [zm number value]
  (cond
        (= 0 number)  (zpush   zm value)
        (< number 16) (wlocal  zm number value)
        :else         (wglobal zm number value)))

