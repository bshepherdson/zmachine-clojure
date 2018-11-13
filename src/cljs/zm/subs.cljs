(ns zm.subs
  (:require
   [re-frame.core :as rf]))

;; Layer 2 - projecting directly from the DB
(rf/reg-sub ::zm #(:zm %))

;; Layer 3 - descending from other subscriptions.
(rf/reg-sub ::upper-window (fn [_] (subscribe [::zm])) #(:upper-window %))
(rf/reg-sub ::lower-window (fn [_] (subscribe [::zm])) #(:lower-window %))
(rf/reg-sub ::split        (fn [_] (subscribe [::zm])) #(:split %))
(rf/reg-sub ::zm-state     (fn [_] (subscribe [::zm])) #(:state %))
