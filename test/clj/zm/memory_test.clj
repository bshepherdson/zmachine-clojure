(ns zm.memory-test
  (:require [clojure.test :refer :all]
            [zm.memory :as sut]
            [zm.fixtures.zork :refer [zork]]))


(deftest test-rb
  (let [zm (zork)]
    (is (= 5 (sut/rb zm 0)))
    (is (= 0x02 (sut/rb zm 0x26ce)))))

(deftest test-wb
  (let [zm (zork)]
    (is (= 0x02 (sut/rb zm 0x26ce)))
    (let [zm' (sut/wb zm 0x26ce 12)]
      (is (= 12 (sut/rb zm' 0x26ce))))))

(deftest test-mb
  (let [zm (zork)]
    (is (= 2 (sut/rb zm 0x26ce)))
    (let [zm (sut/mb zm 0x26ce #(+ % 12))]
      (is (= 14 (sut/rb zm 0x26ce))))))


(deftest test-rw
  (let [zm (zork)]
    (is (= 0x6d34 (sut/rw zm 0x2666)))))

(deftest test-ww
  (let [zm (-> (zork)
               (sut/ww 0x2666 0xbeef))]
    (is (= 0xbeef (sut/rw zm 0x2666)) "reading back the word")
    (is (= 0xbe   (sut/rb zm 0x2666)) "reading high byte")
    (is (= 0xef   (sut/rb zm 0x2667)) "reading low byte")
    (is (= 0xd7be (sut/rw zm 0x2665)) "straddling left side read")
    (is (= 0xef24 (sut/rw zm 0x2667)) "straddling right side read")))

(deftest test-mw
  (let [zm (-> (zork)
               (sut/mw 0x2666 #(- % 0x40)))]
    (is (= 0x6cf4 (sut/rw zm 0x2666)))))

