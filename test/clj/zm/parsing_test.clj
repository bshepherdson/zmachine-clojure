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

(deftest test-separate-words
  "Splits text into its various parts."
  (let [sep (fn [s ws]
              (let [zm {:rom (into [] (map int s))
                        :version 5}
                    dict {:header 0
                          :separators (into #{} (map int ",.\""))}
                    ws' (#'sut/separate-words zm dict 0 (count s))]
                (is (= ws ws'))))]
    (sep "   fred  ,turn left"
         [{:start 3  :length 4 :text "fred"}
          {:start 9  :length 1 :text ","}
          {:start 10 :length 4 :text "turn"}
          {:start 15 :length 4 :text "left"}])
    (sep "get all   except \"that\""
         [{:start 0  :length 3 :text "get"}
          {:start 4  :length 3 :text "all"}
          {:start 10 :length 6 :text "except"}
          {:start 17 :length 1 :text "\""}
          {:start 18 :length 4 :text "that"}
          {:start 22 :length 1 :text "\""}])
    ))

(deftest test-parse-text-dict
  (let [zm (atom (-> (zork)
                     (wb 0xd000 12) ; length
                     (wb 0xd002 (int \t))
                     (wb 0xd003 (int \a))
                     (wb 0xd004 (int \k))
                     (wb 0xd005 (int \e))
                     (wb 0xd006 (int \space))
                     (wb 0xd007 (int \a))
                     (wb 0xd008 (int \l))
                     (wb 0xd009 (int \l))
                     (wb 0xd00a (int \space))
                     (wb 0xd00b (int \j))
                     (wb 0xd00c (int \k))
                     (wb 0xd00d (int \l))))
        entry (fn [n] (+ 0x4805
                         (* (dec n) 9)))]
    (swap! zm #'sut/parse-text 0xd002 12 0xd010 false)
    (is (= 3 (rb @zm 0xd011))
        "Length in words should be recorded")
    (is (= (entry 590) (rw @zm 0xd012)))
    (is (= 4           (rb @zm 0xd014)))
    (is (= 2           (rb @zm 0xd015)))
    (is (= (entry 18)  (rw @zm 0xd016)))
    (is (= 3           (rb @zm 0xd018)))
    (is (= 7           (rb @zm 0xd019)))
    (is (= 0           (rw @zm 0xd01a)))
    (is (= 3           (rb @zm 0xd01c)))
    (is (= 11          (rb @zm 0xd01d)))
    ))
