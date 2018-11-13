(ns zm.input
  "Input handling for CLJS on the web."
  (:require [re-frame.core :as rf]))

;; Here's the process for Z-machine input in the asynchronous web world.
;; - Re-frame driver sets out to run a block of opcodes.
;; - One of them is read, and we call to read below.
;; - It sets the Z-machine state to :read and returns.
;; - Re-frame driver notices and dispatches events accordingly.
;; - Eventually we get a line of text from the user.
;; - We call the callback function passed to us here, with the Z-machine
;;   returned to :running state. That returns a Z-machine, which we can continue
;;   executing.
;; The flow is similar for single characters.

(defn read [zm len cb]
  "Reads up to len characters, then calls (cb zm text).
  This is asynchronous because of the async nature of the web."
  (assoc zm
         :state :read
         :read-callback cb))

(defn single-char [zm cb]
  "Reads a single character, then calls (cb zm char)."
  (assoc zm
         :state :read-char
         :read-callback cb))

