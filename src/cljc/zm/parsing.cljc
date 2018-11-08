(ns zm.parsing
  "Parsing and lexical analysis of user input."
  #?(:cljs (:require-macros [zm.util :refer [v3-5 v4-5]]))
  (:require [zm.memory :refer :all]
            [zm.header :as hdr]
            #?(:clj [zm.util :refer [v3-5 v4-5]])))

(defn- standard-dictionary [zm]
  (rw zm hdr/*dictionary))

(defn- ascii-literal [c]
  "Turns a character into a Z-machine ASCII literal for it."
  (let [i  (int c)
        hi (bit-shift-right i 5)
        lo (bit-and 31 i)]
    [5 6 hi lo]))

; Maps the characters that are valid for input to their Z-character strings.
(def encoded-symbols
  (merge
    ; Generic map for all base ASCII values.
    (into {} (map #(vector % (ascii-literal %))
         (map char (range 32 127))))
    ; Lower case letters
    (into {} (map #(vector % (vector (- (int %) 91)))
         "abcdefghijklmnopqrstuvwxyz")) ; Lower case
    ; Upper case letters
    (into {} (map #(vector % (vector 4 (- (int %) 59)))
         "ABCDEFGHIJKLMNOPQRSTUVWXYZ")) ; Upper case
    ; A2 symbols
    {\newline [5 7]
     \0       [5 8]
     \1       [5 9]
     \2       [5 0xa]
     \3       [5 0xb]
     \4       [5 0xc]
     \5       [5 0xd]
     \6       [5 0xe]
     \7       [5 0xf]
     \8       [5 0x10]
     \9       [5 0x11]
     \.       [5 0x12]
     \,       [5 0x13]
     \!       [5 0x14]
     \?       [5 0x15]
     \_       [5 0x16]
     \#       [5 0x17]
     \'       [5 0x18]
     \"       [5 0x19]
     \/       [5 0x1a]
     \\       [5 0x1b]
     \-       [5 0x1c]
     \:       [5 0x1d]
     \(       [5 0x1e]
     \)       [5 0x1f]

     ; And space is special.
     \space   [0]
    }))

(defn- encode-text [s]
  "Given a string (should be already lower case) returns it encoded as a
  sequence of Z-characters."
  (loop [[c & rest] s
         zchars     []]
    (let [zcs (encoded-symbols c)
          out (concat zchars zcs)]
      (when (not zcs) (throw (Exception. (str "Unknown input character: '" c "'"))))
      (if rest
        (recur rest out)
        out))))

(defn- zchars->word [[a b c]]
  (bit-or (bit-shift-left a 10)
          (bit-shift-left b 5)
          c))

(defn encode-for-dictionary [zm s]
  "Given the Z-machine and a Clojure string, return the string encoded for the
  dictionary (as a sequence of words)."
  (let [encoded (encode-text s)
        padded  (concat encoded (repeat 5))
        chopped (take (v3-5 zm 6 9) padded)
        words   (map zchars->word (partition 3 chopped))]
    (concat (butlast words)
            [(bit-or 0x8000 (last words))]))) ; Set the last word's top bit.

(defn- dictionary-header [zm dict]
  "Given the address of the dictionary (that is, its header) build a structure
  of details about it."
  (let [separator-count (rb zm dict)
        separators      (into #{} (rb-width zm (inc dict) separator-count))
        *entry-length   (+ dict 1 separator-count)
        entry-length    (rb zm *entry-length)
        entry-count     (rw zm (inc *entry-length))
        *first-entry    (+ 3 *entry-length)
        *table-end      (+ *first-entry (* entry-count entry-length))]
    {:header dict
     :separators separators
     :entry-length entry-length
     :entry-count entry-count
     :first-entry *first-entry
     :table-end   *table-end
     :words       (range *first-entry *table-end entry-length)}))


(defn- lookup-word [zm dict-header word]
  "Given the dictionary header structure and a Clojure string, attempt to find
  the word in the dictionary."
  ; TODO The standard dictionary is sorted; I should put that information into
  ; the header map, then use a binary search here instead of this dumb linear
  ; one.
  (let [encoded (encode-for-dictionary zm word)
        width   (v3-5 zm 2 3)] ; Number of words to match.
    (some #(if (= encoded (rw-width zm % width))
             %
             nil)
          (:words dict-header))))


(defn ->str [zm text start end]
  (let [len (- end start)
        cs  (rb-width zm (+ text start) len)]
    (apply str (map char cs))))

(defn- find-start [zm text i len]
  "Finds the index of the next non-space letter (or the length, if at end)."
  (if (>= i len)
    len
    (let [c (rb zm (+ text i))]
      (if (= 32 c)
        (recur zm text (inc i) len)
        i))))

(defn- find-end [zm dict-header text i len]
  "Finds the index of the next space, separator or the index of the end."
  (if (>= i len)
    len
    (let [c (rb zm (+ text i))]
      (if (or (= 32 c)
              ((:separators dict-header) c))
        i
        (recur zm dict-header text (inc i) len)))))

(defn- separate-words [zm dict-header text len]
  "Given the text buffer, pull the words from it as a sequence of
  {:text \"Clojure string\"
   :start index-into-buffer
   :length len}"
  (loop [i     0
         ws    []]
    (let [start (find-start zm text i len)
          end   (find-end zm dict-header text start len)]
      (cond
        (= start len) ws ; Reached end.
        ; Found separator.
        (= start end) (recur (inc end) (conj ws {:start start
                                                 :length 1
                                                 :text   (->str zm text start (inc start))}))

        ; Found a regular word.
        :else (recur end (conj ws {:start start
                                   :length (- end start)
                                   :text   (->str zm text start end)}))))))


(defn- parse-entry [zm parse dict-header word soft?]
  "Given an address into the parse buffer, and the word (as a map from
  separate-words), build its entry in the parse buffer.
  Each entry consists of:
  1. the byte address of the word in the dictionary, or 0 if it's not found.
  2. the number of letters in the word (a byte)
  3. start position (a byte)
  If soft? is true, unrecognized words don't write 0s."
  (let [extra-text (v4-5 zm 1 2) ; Extra byte or two for the length.
        entry      (or (lookup-word zm dict-header (:text word))
                       0)
        zm         (if (and soft? (= 0 entry))
                     zm ; Don't touch it, if soft and not found.
                     (ww zm parse entry))] ; Otherwise write it.
    (-> zm
        (wb (+ 2 parse) (:length word))
        (wb (+ 3 parse) (+ extra-text (:start word))))))


(defn parse-text-dict [zm text len parse soft? dict]
  (let [dict-header (dictionary-header zm dict)
        words       (separate-words zm dict-header text len)
        zm (reduce-kv #(parse-entry %1 (+ 2 (* 4 %2) parse) dict-header %3 soft?)
                      zm
                      words)]
    (wb zm (inc parse) (count words))))


(defn parse-text [zm text len parse soft?]
  "Given the text s and parse-buffer address parse, parse the text against the
  default dictionary."
  (parse-text-dict zm text len parse soft? (standard-dictionary zm)))

