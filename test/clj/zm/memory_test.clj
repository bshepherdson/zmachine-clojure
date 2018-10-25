(ns zm.memory-test
  (:require [clojure.test :refer :all]
            [zm.memory :as sut]
            [zm.fixtures.sherbet :refer [sherbet]]))


(deftest test-rb
  (let [zm (sherbet)]
    (is (= 5 (sut/rb zm 0)))
    (is (= 0xe0 (sut/rb zm 0x26ce)))))

(deftest test-wb
  (let [zm (sherbet)]
    (is (= 0xe0 (sut/rb zm 0x26ce)))
    (let [zm' (sut/wb zm 0x26ce 12)]
      (is (= 12 (sut/rb zm' 0x26ce))))))

(deftest test-mb
  (let [zm (sherbet)]
    (is (= 0xe0 (sut/rb zm 0x26ce)))
    (let [zm (sut/mb zm 0x26ce #(- % 12))]
      (is (= 0xd4 (sut/rb zm 0x26ce))))))


(deftest test-rw
  (let [zm (sherbet)]
    (is (= 0x3720 (sut/rw zm 0x2666)))))

(deftest test-ww
  (let [zm (-> (sherbet)
               (sut/ww 0x2666 0xbeef))]
    (is (= 0xbeef (sut/rw zm 0x2666)) "reading back the word")
    (is (= 0xbe   (sut/rb zm 0x2666)) "reading high byte")
    (is (= 0xef   (sut/rb zm 0x2667)) "reading low byte")
    (is (= 0xccbe (sut/rw zm 0x2665)) "straddling left side read")
    (is (= 0xef1d (sut/rw zm 0x2667)) "straddling right side read")))

(deftest test-mw
  (let [zm (-> (sherbet)
               (sut/mw 0x2666 #(- % 0x40)))]
    (is (= 0x36e0 (sut/rw zm 0x2666)))))

