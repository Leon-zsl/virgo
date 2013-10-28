(defpackage #:virgo-render
  (:use :cl
		:cffi
		:cl-opengl
		:virgo-math)
  (:export #:make-renderer
		   #:make-material
		   #:make-mesh
		   #:make-animation
		   #:animate
		   #:render-mesh
		   #:set-camera
		   #:set-material
		   #:clear-background
		   #:prepare-render
		   #:finish-render
		   #:set-light))
