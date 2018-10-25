(ns zm.runner
    (:require [doo.runner :refer-macros [doo-tests]]
              [zm.core-test]))

(doo-tests 'zm.core-test)
