(ns zm.screen
  "Screen and printing handling.
  This maintains an internal model of the screen, which it is the wrapping app's
  problem to display."
  #?(:cljs (:require-macros [com.rpl.specter :refer [setval transform LAST]]))
  #?(:clj  (:require [com.rpl.specter :refer [setval transform LAST]]))
  (:require [clojure.string :as s]
            [zm.memory :refer :all]))


; We deliberately make most of the Z-machine's code dumb about screen handling.
; It simply reports colour, font, and style changes to this module, which
; includes that information when emitting text to the view.
;
; The Z-machine object holds a :screen map:
; {:font  - the current font by number (always 1, normal, or 4, fixed).
;  :style - a hash-set of the current font styles. empty for Roman.
;           Valid values are: :italic :bold :fixed :reverse-video
;           So far as I'm concerned here they can be combined freely; the view
;           can decide what to do if it only supports some combinations.
;  :fg    - the current foreground colour, in "#rrggbb" format.
;  :bg    - likewise for the background
;  :split - 0 if there's no upper window, otherwise gives its height.
;  :window - 1 = upper window, 0 = main window.
;  :upper-window - [[text]], where text is a Clojure vector of up to 80 columns.
;  :lower-window - [[record]], vector of paragraphs, each paragraph a vector of
;      text blocks. A block has the same style throughout. The record is
;      {:style - style in the same format as above.
;       :fg    - likewise
;       :bg    - likewise
;       :text ""}
;  :cursor [line col] - 0-based cursor position. line is ignored when printing
;      to the lower window, but the column is preserved (for erase_line).
; }

(def upper-window 1)
(def lower-window 0)

(def default-style
  {:font 1 ; normal
   :style #{} ; empty, Roman
   :fg "#000000" ; black
   :bg "#ffffff" ; on white
   })

(def default-screen
  (merge default-style
    {:split 0 ; No split
     :window lower-window
     :upper-window nil ; No split
     :lower-window [{:blocks [(merge default-style {:text ""})]}]
     :cursor [255 0]
     }))


; Stream 3 handling
(defn- emit-stream-3-single [zm c]
  (-> zm
      (wb (-> zm :stream-3 :text) c)
      (update-in [:stream-3 :text] inc)))

(defn- emit-stream-3 [zm text]
  (let [text (s/replace text \newline (char 13))]
    (reduce emit-stream-3-single zm text)))


; Printing code.
(defn- emit-upper [zm ch]
  "Emits a single character into the upper window."
  (let [[r c] (-> zm :screen :cursor)
        c'    (max 79 (inc c))]
    (-> zm
      (update-in [:screen :upper-window r]
                 assoc c ch)
      (assoc-in [:screen :cursor 1] c')))) ; Move the cursor

(defn- print-upper [zm text]
  "Prints text (no newlines!) into the upper window, obeying and updating the
  cursor."
  (reduce emit-upper zm text))

(defn- print-lower [zm text]
  "Adds this text (whole) to the current block and paragraph."
  (let [zm (transform [:screen :lower-window LAST :blocks LAST :text]
                      #(str % text) zm)]
    (update-in zm [:screen :cursor 1] + (count text))))

(defn- emit-line [zm text]
  "Prints a Clojure string (no newlines!) into the current paragraph and block."
  (case (-> zm :screen :window)
    1 (print-upper zm text)
    0 (print-lower zm text)))

(defn mk-block [zm]
  (let [base (select-keys (:screen zm) [:fg :bg :style :font])]
    (assoc base :text "")))

(defn mk-paragraph [zm]
  {:blocks [(mk-block zm)]})

(defn newline [zm]
  "Handles printing a newline."
  (if (:stream-3 zm)
    (emit-stream-3 zm "\n")
    (case (-> zm :screen :window)
      1 (-> zm
            (update-in [:screen :cursor 0] inc)
            (assoc-in  [:screen :cursor 1] 0))
      0 (let [p (mk-paragraph zm)]
          (-> zm
              (assoc-in [:screen :cursor 1] 0) ; Reset cursor
              (update-in [:screen :lower-window] conj p))))))

(defn emit [zm text]
  "Prints a string that might contain newlines."
  (if (:stream-3 zm)
    (emit-stream-3 zm text)
    (let [lines (s/split-lines text)]
      (reduce emit-line zm lines))))


; Updates to the style model.
(defn style! [zm style]
  "Style is given as a bitmap: fibr
  Fixed, Italic, Bold, Reverse video.
  Setting to 0 clears everything."
  (assoc-in zm [:screen :style]
            (into #{} (filter identity
                              [(when (bit-test style 3) :fixed)
                               (when (bit-test style 2) :italic)
                               (when (bit-test style 1) :bold)
                               (when (bit-test style 0) :reverse-video)]))))

(defn font! [zm font]
  (if (#{1 4} font)
    (assoc-in zm [:screen :font] font)
    zm)) ; Only honour those two values.

(defn colours! [zm fg bg]
  "These are true colours in #rrggbb format. Use the functions below to map from
  Z-machine colour palette or Z-machine 'true colour' to web formats."
  (-> zm
      (assoc-in [:screen :fg] fg)
      (assoc-in [:screen :bg] bg)))


(defn cursor! [zm row col]
  (assoc-in zm [:screen :cursor] [row col]))


(defn- remove-split! [zm]
  (-> zm
      (assoc-in [:screen :upper-window] nil)      ; Clear upper
      (assoc-in [:screen :window] lower-window))) ; And unsplit

(defn- adjust-split! [zm height contents]
  "Adjusts the size of the split, adjusts the contents, and possibly returns
  the focus to the lower window."
  (-> zm
      (assoc-in [:screen :upper-window] (take height contents))
      (update-in [:screen :window]
                 (let [row (-> zm :screen :cursor (nth 0))]
                   #(if (and (= % upper-window)
                             (< row height))
                      upper-window ; Still upper window
                      lower-window)))))


(defn split! [zm height]
  "Splitting to 0 unsplits the screen altogether. The cursor stays put, unless
  the split shrinks and the cursor is now in the lower window."
  (let [zm (assoc-in zm [:screen :split] height)
        sc (:screen zm)]
    (if (= 0 height)
      (remove-split! zm)
      (adjust-split! zm height
                     (if (= 3 (:version zm))
                       (repeat "") ; In v3, window is always cleared.
                       (concat (:upper-window sc) (repeat "")))))))

(defn- current-column [zm]
  "Returns the current column of the last line of the text."
  (let [para (-> zm :screen :lower-window peek :blocks)]
    (reduce #(+ %1 (count (:text %2))) 0 para)))

(defn window! [zm number]
  (let [col (current-column zm)]
    (-> zm
      (assoc-in [:screen :window] number)
      (assoc-in [:screen :cursor]
                (if (= lower-window number)
                  [255 col] ; Lower window is at the end of the current text.
                  [0 0]))))); Upper window switches always move to the top left.


(defn erase-window! [zm win]
  "Erases the window. Only 0 and 1 are provided; the special values -1 and -2
  are handled by the opcode."
  (case win
    upper-window (assoc-in zm [:screen :upper-window]
                           (take (-> zm :screen :split) (repeat "")))
    lower-window (assoc-in zm [:screen :lower-window] [(mk-paragraph zm)])))


(defn- erase-line-upper [zm]
  (let [[row col] (-> zm :screen :cursor)]
    (update-in zm [:screen :upper-window (nth row)] subs 0 col)))

(defn- erase-line-lower [zm]
  "More involved process for erasing the line in the lower window:
  1. Take a prefix of the blocks until the column exceeds the current column.
  2. Erase some number of characters from the text in that last block.
  3. Add a new block with the current styles and empty text."
  (let [[row column] (-> zm :screen :cursor)
        p (-> zm :screen :lower-window peek :blocks) ; Current paragraph.
        blocks (loop [bs       p
                      col      0
                      out      []]
                 (let [col' (+ col (count (:text (first bs))))]
                   (cond
                     (empty? bs) out ; Done

                     ; Still space, keep going.
                     (< col' column) (recur (rest bs) col' (conj out (first bs)))

                     ; Run out of space. Truncate and return.
                     :else (let [b  (first bs)
                                 b' (update b :text subs 0 (- column col))]
                             (conj out b')))))]
    (setval [:screen :lower-window LAST :blocks] (conj blocks (mk-block zm)) zm)))


(defn erase-line! [zm]
  "Erases from the current cursor position to the end of the line.
  In the upper window this is easy. In the lower window it's a bit more tricky."
  (case (-> zm :screen :window)
    1 (erase-line-upper zm)
    0 (erase-line-lower zm)))


