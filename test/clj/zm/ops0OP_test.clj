(ns zm.ops0OP-test
  (:require [clojure.test :refer :all]
            [zm.memory :refer :all]
            [zm.variables :as v]
            [zm.printing :as p]
            [zm.decoding :as sut]
            [zm.fixtures.quick-story :as q]))

(deftest test-print-literal
  "Tests decoding of literal string printing.
  PC must move to the right spot."
  (let [zm (atom (-> (q/basics 5)
                     (q/compile [0xb2 ; Print
                                 0x13 0x1a ; Su
                                 0x21 0x0a ; cce
                                 0xe3 0x05 ; ss
                                 ])))]
    (is (= (:pc @zm) 0x4000))
    (with-redefs [p/print (fn [s] (is (= s "Success")))]
      (swap! zm sut/decode))
    (is (= (:pc @zm) 0x4007))))

