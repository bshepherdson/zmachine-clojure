(ns zm.events
  (:require
   [re-frame.core :as rf]
   [zm.db :as db]
   [zm.driver :as zmd]
   [day8.re-frame.tracing :refer-macros [fn-traced defn-traced]]
   ))

(rf/reg-event-db
 ::initialize-db
 (fn-traced [_ _]
   db/default-db))

(rf/reg-event-fx
  ::fetch-story
  (fn-traced [_]
    (-> (js/fetch "http://localhost:4554/games/zork1/Zork1.z5")
        (.then #(Uint8Array. (.arrayBuffer %)))
        (.then zmachine/read-file)
        (.then #(rf/dispatch [::story-loaded %])))
    nil))


(rf/reg-event-fx
  ::story-loaded
  (fn-traced [db [_ zm]]
    (prn "loaded" zm)
    (assoc db :zm zm)))

(rf/reg-event-db
  ::tick-zm
  (fn-traced [db _]
    (update db :zm zmd/tick-zm)))

