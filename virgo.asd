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
			   :cl-opengl
			   :usocket
			   :userial)
  :components ((:module "src"
                :components
                ((:module math
						  :components
						  ((:file "package")
						   (:file "color")
						   (:file "vector4")
						   (:file "quaternion")
						   (:file "matrix44")
						   (:file "transform"))
						  :serial t)
				 (:module render
						  :components
						  ((:file "package")
						   (:file "material")
						   (:file "mesh")
						   (:file "animation")
						   (:file "texture")
						   (:file "skinnedmesh")
						   (:file "renderer"))
						  :serial t)
				 (:module scene
						  :components
						  ((:file "package")
						   (:file "light")
						   (:file "camera")
						   (:file "entity")
						   (:file "scene"))
						  :serial t)
				 (:module res
						  :components
						  ((:file "package")
						   (:file "reader"))
						  :serial t)
				 (:module net
						  :components
						  ((:file "package")
						   (:file "packet")
						   (:file "socket"))
						  :serial t)
				 (:module game
				 		  :components
				 		  ((:file "package")
				 		   (:file "game"))
				 		  :serial t)
				 (:file "package")
				 (:file "main"))
				 :serial t))
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
