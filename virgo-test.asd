#|
  This file is a part of virgo project.
|#

(in-package :cl-user)
(defpackage virgo-test-asd
  (:use :cl :asdf))
(in-package :virgo-test-asd)

(defsystem virgo-test
  :author ""
  :license ""
  :depends-on (:virgo
               :cl-test-more)
  :components ((:module "t"
                :components
                ((:file "virgo"))))
  :perform (load-op :after (op c) (asdf:clear-system c)))
