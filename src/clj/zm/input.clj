(ns zm.input
  "Input handling for JVM Clojure, basic input from the console.")


(defn read [zm len cb]
  "Reads up to len chracters, then calls (cb zm text)."
  (let [raw (read-line)
        s   (apply str (take len raw))]
    (cb zm s)))

(defn single-char [zm cb]
  ; TODO Implement me.
  (cb zm \newline))

