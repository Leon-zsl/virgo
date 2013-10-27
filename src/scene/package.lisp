(defpackage #:virgo-scene
  (:use :cl
		:cffi
		
		:virgo-math
		:virgo-render)
  (:export #:make-scene
		   #:make-camera
		   #:make-light
		   #:make-entity))
