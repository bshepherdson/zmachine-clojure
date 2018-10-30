(ns zm.printing
  "Printing routines for printing to the console, for use in testing.")

(defn print [s]
  (clojure.core/print s))

(defn println [s]
  (clojure.core/println s))

(defn newline []
  (clojure.core/println ""))

