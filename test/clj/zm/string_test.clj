(ns zm.string-test
  (:require [clojure.test :refer :all]
            [zm.strings :as sut]
            [zm.fixtures.zork :refer [zork]]))

(defn test-read [addr s]
  (is (= s (sut/print-ra (zork) addr))))

(deftest test-simple-read
  (test-read 0x1938c "How silly!"))

(deftest test-with-abbreviations
  (test-read 0x19378 "Now, the alternative solution:")
  (test-read 0x19400 "The Thief is constantly moving about.")
  (test-read 0x191a0 "You are standing at the entrance of what might have been a coal mine. The shaft enters the west wall, and there is another exit on the south end of the room."))

(deftest test-with-literals
  (test-read 0x163c8 "---> Frobozz Magic Gunk Company <---\n\t  All-Purpose Gunk"))

