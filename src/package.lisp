#|
the package define
|#

(defpackage #:virgo
  (:use #:cl
		#:cffi
;		#:cl-opengl
;		#:lispbuilder-sdl
		#:usocket
		#:userial)
  (:export #:main
		   #:scene
		   #:camera
		   #:entity
		   #:light
		   #:matrix44
		   #:vector4))
