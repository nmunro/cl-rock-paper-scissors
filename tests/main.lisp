(defpackage rock-paper-scissors/tests/main
  (:use :cl
        :rock-paper-scissors
        :rove))
(in-package :rock-paper-scissors/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :rock-paper-scissors)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
