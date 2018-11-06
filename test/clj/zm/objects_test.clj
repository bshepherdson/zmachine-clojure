(ns zm.objects-test
  (:require [clojure.test :refer :all]
            [zm.memory :refer :all]
            [zm.objects :as sut]
            [zm.fixtures.quick-story :as q]
            [zm.fixtures.zork :refer [zork]]))

(deftest test-first-object-v3
  (is (= 0x103e (#'sut/first-object (q/basics 3)))))
(deftest test-first-object-v3
  (is (= 0x107e (#'sut/first-object (q/basics 5)))))

(deftest test-prop-defaults
  (let [zm (-> (q/basics 5)
               (ww 0x1012 21))]
    (is (= 21 (#'sut/property-default zm 10)))))

(deftest test-rrelatives-v3
  (let [zm (-> (q/basics 3)
               (wb 0x1042 3)
               (wb 0x1043 4)
               (wb 0x1044 5))]
    (is (= 3 (sut/rparent  zm (sut/object zm 1))))
    (is (= 4 (sut/rsibling zm (sut/object zm 1))))
    (is (= 5 (sut/rchild   zm (sut/object zm 1))))))

(deftest test-rrelatives-v5
  (let [zm (-> (q/basics 5)
               (ww 0x1084 3)
               (ww 0x1086 4)
               (ww 0x1088 5))]
    (is (= 3 (sut/rparent  zm (sut/object zm 1))))
    (is (= 4 (sut/rsibling zm (sut/object zm 1))))
    (is (= 5 (sut/rchild   zm (sut/object zm 1))))))

(deftest test-wrelatives-v3
  (let [zm  (-> (q/basics 3))
        obj (sut/object zm 1)
        zm  (-> zm
                (sut/wparent  obj 12)
                (sut/wsibling obj 13)
                (sut/wchild   obj 14))]
    (is (= 12 (rb zm 0x1042)))
    (is (= 13 (rb zm 0x1043)))
    (is (= 14 (rb zm 0x1044)))))

(deftest test-wrelatives-v5
  (let [zm  (-> (q/basics 5))
        obj (sut/object zm 2)
        zm  (-> zm
                (sut/wparent  obj 1212)
                (sut/wsibling obj 1313)
                (sut/wchild   obj 1414))]
    (is (= 1212 (rw zm 0x1092)))
    (is (= 1313 (rw zm 0x1094)))
    (is (= 1414 (rw zm 0x1096)))))

(deftest test-data-prop-v3
  (let [zm (-> (q/basics 3)
               (q/compile [2r01101101]))] ; Length 4, number 11.
    (is (= 0x4000 (sut/data->prop zm 0x4001)))))

(deftest test-data-prop-v5-short
  (let [zm (-> (q/basics 5)
               (q/compile [2r00001101]))] ; Length 1, number 13
    (is (= 0x4000 (sut/data->prop zm 0x4001)))))

(deftest test-data-prop-v5-long
  (let [zm (-> (q/basics 5)
               (q/compile [2r10001101 2r10000100]))] ; Length 4, number 13
    (is (= 0x4000 (sut/data->prop zm 0x4002)))))

(deftest test-prop-len-v3
  (let [zm (-> (q/basics 3)
               (q/compile [2r01101101]))] ; Length 4, number 11.
    (is (= 4 (sut/prop-len zm 0x4000)))))

(deftest test-prop-len-v5-short
  (let [zm (-> (q/basics 5)
               (q/compile [2r00001101      ; Length 1, number 13
                           2r01001101]))]  ; Length 2, number 13
    (is (= 1 (sut/prop-len zm 0x4000)))
    (is (= 2 (sut/prop-len zm 0x4001)))))

(deftest test-prop-len-v5-long
  (let [zm (-> (q/basics 5)
               (q/compile [2r10001101 2r10000100]))] ; Length 4, number 13
    (is (= 4 (sut/prop-len zm 0x4000))))

  ; Test the 0 -> 64 special case.
  (let [zm (-> (q/basics 5)
               (q/compile [2r10001101 2r10000000]))] ; Length 0 = 64, number 13
    (is (= 64 (sut/prop-len zm 0x4000)))))

(deftest test-prop->data
  ; v3
  (let [zm (-> (q/basics 3)
               (q/cb 2r01101101))]
    (is (= 0x4001 (sut/prop->data zm 0x4000))))
  ; v5 short
  (let [zm (-> (q/basics 5)
               (q/cb 2r00001101))]
    (is (= 0x4001 (sut/prop->data zm 0x4000))))
  ; v5 long
  (let [zm (-> (q/basics 5)
               (q/compile [2r10001101 2r10000100]))] ; Length 4, number 13
    (is (= 0x4002 (sut/prop->data zm 0x4000)))))

(deftest test-remove-obj
  (let [zm (atom (zork))]
    ; Object 117 is "Dam Base"; its parent is 41, sibling is 233, child 228.
    ; 117's elder sibling is 38.
    ; Object 41 is the nameless room container.
    ; 233 is the Maintenance Room.
    ; 228 is "pile of plastic".
    ; First, remove the object.
    (swap! zm sut/remove-obj 117)
    (is (= 0 (sut/rparent @zm (sut/object @zm 117)))
        "Parent of 117 should be 0")
    (is (= 228 (sut/rchild @zm (sut/object @zm 117)))
        "Child of 117 should still be 228")
    (is (= 233 (sut/rsibling @zm (sut/object @zm 38)))
        "Sibling of my elder sibling 38 should be my old sibling, 233.")
    (is (= 0 (sut/rsibling @zm (sut/object @zm 117)))
        "My sibling should now be 0."))

  (let [zm (atom (zork))]
    ; Object 100 (skeleton key) is the first child of its parent 227.
    ; The sibling of 100, 241, should be the new first child.
    (swap! zm sut/remove-obj 100)
    (is (= 0 (sut/rparent @zm (sut/object @zm 100)))
        "Parent of 100 should be 0")
    (is (= 0 (sut/rchild @zm (sut/object @zm 100)))
        "Child of 100 should still be 0")
    (is (= 241 (sut/rchild @zm (sut/object @zm 227)))
        "Child of my parent 227 should be my old sibling 241")
    (is (= 0 (sut/rsibling @zm (sut/object @zm 100)))
        "My sibling should now be 0."))
  )

(deftest test-attributes
  (let [zm   (atom (zork))
        *obj (sut/object @zm 100)]
    ; Object 100 has attributes 33 and 44.
    (is (sut/test-attr @zm *obj 33))
    (is (sut/test-attr @zm *obj 44))
    ; But not 21
    (is (not (sut/test-attr @zm *obj 21)))
    ; So let's add 21.
    (swap! zm sut/set-attr *obj 21)
    (is (sut/test-attr @zm *obj 21))

    ; And if we remove 33, it's gone.
    (swap! zm sut/clear-attr *obj 33)
    (is (not (sut/test-attr @zm *obj 33)))
    ))

(deftest test-insert-obj
  ; Object 79 ("Living Room") has child 9 ("nail").
  ; We remove 24 ("crystal trident") from the tree, then add it to 79.
  (let [zm (atom (zork))]
    (swap! zm sut/remove-obj 24)
    (is (= 0 (sut/rparent @zm (sut/object @zm 24)))
        "After removal, #24's parent is 0")
    (is (= 9 (sut/rchild  @zm (sut/object @zm 79)))
        "Before the insert, the child of #79 is 9.")
    (swap! zm sut/insert-obj 24 79)
    (is (= 24 (sut/rchild   @zm (sut/object @zm 79)))
        "After the insert, the child of #79 is 24.")
    (is (= 9  (sut/rsibling @zm (sut/object @zm 24)))
        "The sibling of #24 is the old direct child, 9.")
    (is (= 79 (sut/rparent  @zm (sut/object @zm 24)))
        "And the parent of #24 is 79.")
    ))

(deftest test-find-prop
  ; Object 79 has properties 62, 61, 54, 45 and 37.
  (let [zm (zork)]
    (is (sut/find-prop zm (sut/object zm 79) 62))
    (is (sut/find-prop zm (sut/object zm 79) 61))
    (is (sut/find-prop zm (sut/object zm 79) 54))
    (is (sut/find-prop zm (sut/object zm 79) 45))
    (is (sut/find-prop zm (sut/object zm 79) 37))
    (is (nil? (sut/find-prop zm (sut/object zm 79) 30)))
    ))

(deftest test-prop-value
  (let [zm (zork)]
    (is (sut/find-prop zm (sut/object zm 79) 45))
    (is (= 0x3056 (rw zm (sut/prop->data zm
                           (sut/find-prop zm (sut/object zm 79) 45)))))
    ))
