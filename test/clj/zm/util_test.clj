(ns zm.util-test
  (:require [clojure.test :refer :all]
            [zm.util :refer [bit-slice]]))

(deftest test-bit-slice
  (is (= 3       (bit-slice -1 4 2)))
  (is (= 2r101   (bit-slice 2r11101110 3 3)))
  (is (= 2r101   (bit-slice 2r10101110 5 3)))
  (is (= 2r10101 (bit-slice 2r10101110 3 5))))

