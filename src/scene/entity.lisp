(in-package :virgo-scene)

(defclass entity ()
  ((transform :accessor transform
			  :initarg :transform
			  :initform (make-transform))
   (mesh :accessor mesh
		 :initarg :mesh
		 :initform nil)
   (animation :accessor animation
			  :initarg :animation
			  :initform nil)
   (material :accessor material
			 :initarg :material
			 :initform :nil)))

(defun make-entity ()
  (make-instance 'entity))


