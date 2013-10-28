(defpackage #:virgo-scene
  (:use :cl
		:cffi
		:virgo-math
		:virgo-render)
  (:export #:make-camera
		   #:make-light
		   #:make-entity
		   #:make-scene
		   #:add-light
		   #:remove-light
		   #:add-entity
		   #:remove-entity
		   #:get-entity
		   #:render))
