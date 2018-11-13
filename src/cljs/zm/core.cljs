(ns zm.core
  (:require
   [reagent.core :as reagent]
   [re-frame.core :as rf]
   [zm.events :as events]
   [zm.views :as views]
   [zm.config :as config]
   ))


(defn dev-setup []
  (when config/debug?
    (enable-console-print!)
    (println "dev mode")))

(defn mount-root []
  (rf/clear-subscription-cache!)
  (reagent/render [views/main-panel]
                  (.getElementById js/document "app")))

(defn ^:export init []
  (rf/dispatch-sync [::events/initialize-db])
  (rf/dispatch      [::events/fetch-story])
  (dev-setup)
  (mount-root))
