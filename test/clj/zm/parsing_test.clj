(ns zm.parsing-test
  (:require [clojure.test :refer :all]
            [zm.memory :refer :all]
            [zm.parsing :as sut]
            [zm.header :as hdr]
            [zm.fixtures.zork :refer [zork]]))

(deftest test-lookup-word
  "Looks up some random words in Zork to make sure they're working."
  (let [zm    (zork)
        *dict (rw zm hdr/*dictionary)
        dh    (#'sut/dictionary-header zm *dict)
        entry (fn [n] (+ (:first-entry dh)
                         (* (dec n)
                            (:entry-length dh))))]
    (is (= (entry 157) (#'sut/lookup-word zm dh "describe")))
    (is (= (entry 58)  (#'sut/lookup-word zm dh "bite")))
    (is (= (entry 1)   (#'sut/lookup-word zm dh "$verify")))
    (is (= (entry 180) (#'sut/lookup-word zm dh "dumbwaiter")))
    (is (= (entry 236) (#'sut/lookup-word zm dh "g")))
    (is (= (entry 669) (#'sut/lookup-word zm dh "what's")))
    (is (= (entry 206) (#'sut/lookup-word zm dh "fcd#3")))
    (is (= (entry 2)   (#'sut/lookup-word zm dh ".")))
    (is (= (entry 3)   (#'sut/lookup-word zm dh ",")))
    (is (= (entry 8)   (#'sut/lookup-word zm dh "\"")))
    ))
