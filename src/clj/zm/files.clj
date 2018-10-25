(ns zm.files
  (:require [clojure.java.io :as io]))

(defn read-story-file [path]
  (let [f    (java.io.File. path)]
    (with-open [xin  (io/input-stream f)
                xout (java.io.ByteArrayOutputStream.)]
      (io/copy xin xout)
      (.toByteArray xout))))
