(ns zm.variables
  (:require [zm.memory :refer :all]))

;; Variable accessors
(defn zpop [zm]
  "Returns a [zm value] pair."
  (let [value  (-> zm :frame :stack first)]
    [(update-in zm [:frame :stack] rest)
     value]))

(defn zpush [zm value]
  (update-in zm [:frame :stack] #(cons value %)))

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

