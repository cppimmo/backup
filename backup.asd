(defsystem "backup"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "backup/tests"))))

(defsystem "backup/tests"
  :author ""
  :license ""
  :depends-on ("backup"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for backup"
  :perform (test-op (op c) (symbol-call :rove :run c)))
