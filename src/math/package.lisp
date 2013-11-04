(in-package :cl-user)

(defpackage :virgo-math
  (:use :cl)
  (:export ;matrix44
           :make-matrix44
		   :copy-matrix44
		   :+matrix-zero+
		   :+matrix-identity+
		   ;vector4
		   :make-vector4
		   :copy-vector4
		   :+vector-zero+
		   :+vector-one+
		   :+vector-x+
		   :+vector-negx+
		   :+vector-y+
		   :+vector-negy+
		   :+vector-z+
		   :+vector-negz+
		   ;quaternion
		   :make-quaternion
		   :copy-quaternion
		   :+quaternion-zero+
		   :+quaternion-identity+
		   ;transform
		   :make-transform
		   :transform-rotation
		   :transform-rotate
		   :transform-position
		   :transform-move
		   :transform-lookat
		   ;color
		   :color-r
		   :color-g
		   :color-b
		   :color-a
		   :make-color
		   :+color-white+
		   :+color-black+
		   :+color-red+
		   :+color-blue+
		   :+color-green+
		   :+color-grey+))
