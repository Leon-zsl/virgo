(defpackage #:virgo-res
  (:use :cl
		:cffi

		:virgo-math
		:virgo-render
		:virgo-scene)
  (:export :read-mesh
		   :read-animation
		   :read-texture
		   :read-material
		   :read-entity
		   :read-scene))
