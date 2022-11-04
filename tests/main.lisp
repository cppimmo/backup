(defpackage Backup/tests/main
  (:use :cl
        :Backup
        :rove))
(in-package :Backup/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :Backup)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
