(defsystem "rock-paper-scissors"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "rock-paper-scissors/tests"))))

(defsystem "rock-paper-scissors/tests"
  :author ""
  :license ""
  :depends-on ("rock-paper-scissors"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for rock-paper-scissors"
  :perform (test-op (op c) (symbol-call :rove :run c)))
