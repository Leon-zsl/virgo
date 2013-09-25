#|
  This file is a part of virgo project.
|#

(in-package :cl-user)
(defpackage virgo-asd
  (:use :cl :asdf))
(in-package :virgo-asd)

(defsystem virgo
  :description "this is a renderer based on opengl"
  :version "0.0.1"
  :author "Leon Zhang"
  :license "BSD"
  :depends-on (:cffi
			   :cl-opengl)
  :components ((:module "src"
                :components
                ((:file "package")
				 (:file "virgo" depends-on ("package"))
				 (:file "scene" depends-on ("package"))
				 (:file "camera" depends-on ("package"))
				 (:file "entity" depends-on ("package"))
				 (:file "light" depends-on ("package"))
				 (:file "matrix44" depends-on ("package"))
				 (:file "vector4" depends-on ("package")))))
  :description ""
  :long-description
  #.(with-open-file (stream (merge-pathnames
                             #p"README.markdown"
                             (or *load-pathname* *compile-file-pathname*))
                            :if-does-not-exist nil
                            :direction :input)
      (when stream
        (let ((seq (make-array (file-length stream)
                               :element-type 'character
                               :fill-pointer t)))
          (setf (fill-pointer seq) (read-sequence seq stream))
          seq)))
  :in-order-to ((test-op (load-op virgo-test))))
