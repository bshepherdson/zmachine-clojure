(ns zm.views
  (:require
   [re-frame.core :as rf]
   [zm.subs :as subs]
   ))

(defn upper-window []
  (let [contents (rf/subscribe [::subs/upper-window])]
    [:pre
     "This is some text in the upper window."]))

(defn block [b]
  "A block is a map {:style :fg :bg :text}, where :fg and :bg are strings in
  HTML #rrggbb format, and :style is a hash-set possibly containing :italic,
  :bold, :fixed and :reverse-video."
  (let [style (:style b)
        rv    (:reverse-video style)
        fg    (if rv (:bg b) (:fg b))
        bg    (if rv (:fg b) (:bg b))]
    [:span ^{:key (hash b)}
     {:style {:font-weight (when (:bold   style) "bold")
              :font-style  (when (:italic style) "italic")
              :font-family (when (:fixed  style) "monospace")
              :color fg
              :background-color bg}}
     (:text b)]))

(defn paragraph [p]
  "A paragraph is a <p> tag containing a list of blocks."
  [:p ^{:key (hash p)}
   (for [b (:blocks p)]
        [block b])])

(defn lower-window []
  (let [paragraphs (rf/subscribe [::subs/lower-window])]
    [:div.output
     (for [p @paragraphs]
       [paragraph p])]))

(defn input-keypress [e]
  (when (= (.-key e) "Enter")
    (rf/dispatch [:input-line (-> e .-target .-value)])))

(defn input-line []
  (let [zm-state (rf/subscribe [::subs/zm-state])]
    [:input.cmdline {:disabled (not= @zm-state :read)
                     :on-key-press input-keypress}]))

(defn main-panel []
  [:div
   [upper-window]
   [lower-window]
   [input-line]
   ])
