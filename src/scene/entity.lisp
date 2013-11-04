(in-package :virgo-scene)

(defclass entity ()
  ((transform :accessor entity-transform
			  :initarg :transform
			  :initform (make-transform))
   (mesh :accessor entity-mesh
		 :initarg :mesh
		 :initform nil)
   (animation :accessor entity-animation
			  :initarg :animation
			  :initform nil)
   (material :accessor entity-material
			 :initarg :material
			 :initform :nil)))

(defun make-entity ()
  (make-instance 'entity))
