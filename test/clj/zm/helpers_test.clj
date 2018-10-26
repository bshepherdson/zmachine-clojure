(ns zm.helpers-test
  (:require [clojure.test :refer :all]
            [zm.helpers :as sut]
            [zm.memory :refer :all]
            [zm.variables :as v]
            [zm.fixtures.quick-story :as q]))

(deftest test-signed
  (is (= -1 (sut/signed 0xFFFF)))
  (is (= -3 (sut/signed 0xFFFD)))
  (is (=  3 (sut/signed 3)))
  (is (=  0 (sut/signed 0)))
  (is (=  0x7fff (sut/signed 0x7fff)))
  (is (= -0x8000 (sut/signed 0x8000)))

  ;; 8-bit
  (is (= -1 (sut/signed 0xFF 8)))
  (is (= -3 (sut/signed 0xFD 8)))
  (is (=  3 (sut/signed 3 8)))
  (is (=  0 (sut/signed 0 8)))
  (is (=  0x7f (sut/signed 0x7f 8)))
  (is (= -0x80 (sut/signed 0x80 8)))

  ;; 14-bit
  (is (= -2 (sut/signed 0x3ffe 14)))
  (is (=  2 (sut/signed 2 14))))


(deftest test-zstore
  (let [zm (atom (-> (q/basics 5)
                     (q/cb 0)
                     (assoc :frame {:stack [1]})))]
    (is (= 0x4000 (:pc @zm)))
    (swap! zm sut/zstore 12)
    (is (= 0x4001 (:pc @zm)))
    (is (= (seq [12 1])
           (get-in @zm [:frame :stack]))))

  (let [zm (atom (-> (q/basics 5)
                     (q/cb 2)
                     (assoc :frame {:locals [0 0]})))]
    (is (= 0x4000 (:pc @zm)))
    (swap! zm sut/zstore 12)
    (is (= 0x4001 (:pc @zm)))
    (is (= (seq [0 12])
           (get-in @zm [:frame :locals]))))

  (let [zm (atom (-> (q/basics 5)
                     (q/cb 24)))]
    (is (= 0x4000 (:pc @zm)))
    (swap! zm sut/zstore 12)
    (is (= 0x4001 (:pc @zm)))
    (is (= 12
           (v/rglobal @zm 24)))))


(deftest test-zbranch
  ; We want to test short and long, positive and negated, plus the returns.
  (let [zm-short-positive (-> (q/basics 5) (q/cb 2r11000111)) ; +7
        zm-short-negative (-> (q/basics 5) (q/cb 2r01000111)) ; +7
        zm-long-positive  (-> (q/basics 5) (q/cw 2r1000011100101011)) ; +1835
        zm-long-negative  (-> (q/basics 5) (q/cw 2r0000011100101011)) ; +1835
        test-branch (fn [zm arg delta]
                      ; True input
                      (is (= 0x4000 (:pc zm)))
                      (is (= (+ 0x4000 delta)
                             (:pc (sut/zbranch zm arg)))))]

  (test-branch zm-short-positive true  6) ; 1 + 7 - 2
  (test-branch zm-short-positive false 1)
  (test-branch zm-short-negative true  1)
  (test-branch zm-short-negative false 6) ; 1 + 7 - 2

  (test-branch zm-long-positive  true  1835) ; 2 + 1835 - 2
  (test-branch zm-long-positive  false 2)
  (test-branch zm-long-negative  true  2)
  (test-branch zm-long-negative  false 1835) ; 2 + 1835 - 2
  )

  ;; Special cases for the zreturn
  (let [returned (atom -1)
        zm-rtrue-positive  (-> (q/basics 5) (q/cb 2r11000001)) ; Short, positive
        zm-rfalse-positive (-> (q/basics 5) (q/cb 2r11000000)) ; Short, positive
        test-branch (fn [zm arg ret]
                      (is (= 0x4000 (:pc zm)))
                      (sut/zbranch zm arg)
                      (is (= ret @returned))
                      (reset! returned -1))]
    (with-redefs [sut/zreturn (fn [zm val]
                                (reset! returned val)
                                zm)]
      (test-branch zm-rtrue-positive true   1)
      (test-branch zm-rtrue-positive false -1)
      (test-branch zm-rfalse-positive true   0)
      (test-branch zm-rfalse-positive false -1))))
