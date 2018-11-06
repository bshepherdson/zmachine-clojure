(ns zm.reading
  "Reading input from the user.")

(defn accept [max]
  "Accepts up to max characters from the user (not counting a newline)."
  ; Since this is the for-testing console version, it's simple.
  (let [raw (read-line)]
    (apply str raw)))
