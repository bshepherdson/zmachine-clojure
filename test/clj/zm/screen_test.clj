(ns zm.screen-test
  (:require [clojure.test :refer :all]
            [com.rpl.specter :refer [transform LAST]]
            [zm.screen :as sut]
            [zm.fixtures.quick-story :as q]))

(defn with-style
  ([text] (merge sut/default-style {:text text}))
  ([text style] (merge style {:text text})))

(defn to-block [b]
  (if (map? b)
    b
    (with-style b)))

(defn to-para [bs]
  {:blocks (mapv to-block bs)})

(defn with-text [paras]
  "Turns [[strings]] into paragraphs with style, in a fake Z-machine."
  (let [paras (mapv to-para paras)]
    (-> (q/basics 5)
        (assoc :screen (assoc sut/default-screen :lower-window paras))
        (sut/window! sut/lower-window)
        )))

(defn text-from [zm]
  (let [paras (-> zm :screen :lower-window)]
    (mapv #(mapv :text (:blocks %)) paras)))

(deftest test-current-column
  (let [zm (with-text [["This is" "some text"]
                       ["A second" "line" "here"]])]
    (is (= 16 (#'sut/current-column zm)))))

(deftest test-print-lower
  "Printing to the lower window should update the current block, move the cursor."
  (let [zm (with-text [["This is" "some text"]
                       ["More text " "goes "]])
        zm' (sut/emit zm "here")]
    (is (= (-> zm  :screen :cursor (nth 1)) 15) "original cursor")
    (is (= (-> zm' :screen :cursor (nth 1)) 19) "after cursor")
    (is (= (text-from zm')
           [["This is" "some text"]
            ["More text " "goes here"]]))))

(deftest test-print-with-newlines
  (let [zm (with-text [["First line"]
                       ["Second line"]])
        zm' (-> zm
                (sut/emit " is longer")
                (sut/newline))
        zm'' (sut/emit zm' "more here")]
    (is (= 0 (-> zm'  :screen :cursor (nth 1))) "cursor is 0 after newline")
    (is (= 9 (-> zm'' :screen :cursor (nth 1))) "and 9 after more printing")
    (is (= (text-from zm')
           [["First line"]
            ["Second line is longer"]
            [""]]))
    (is (= (text-from zm'')
           [["First line"]
            ["Second line is longer"]
            ["more here"]]))
    ))

(deftest test-erase-line
  (let [zm (-> (with-text [["First " "line"]
                           ["Second " "line goes " "here"]])
               (assoc-in [:screen :cursor 1] 12))
        zm' (-> zm
                (sut/style! 4)
                (sut/erase-line!))]
    (is (= 12 (-> zm' :screen :cursor (nth 1))) "cursor not moved")
    (is (= (text-from zm')
           [["First " "line"]
            ["Second " "line " ""]]))
    (is (= #{:italic} (-> zm' :screen :lower-window peek :blocks peek :style)))
    ))

