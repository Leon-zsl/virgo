#|
the package define
|#

(defpackage #:virgo
  (:use #:cl
		#:cffi
		#:cl-opengl)
  (:export #:virgo
		   #:scene
		   #:camera
		   #:entity
		   #:light
		   #:matrix44
		   #:vector4))
