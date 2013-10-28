(in-package :virgo-math)

(defclass transform ()
  ((position :accessor position
			 :initarg :position
			 :initform (make-vector4))
   (rotation :accessor rotation
			 :initarg :rotation
			 :initform (make-quaternion))
   (scale :accessor scale
		  :initarg (make-vector4)
		  :initform (make-vector4))
   (parent :accessor parent
		   :initarg :parent
		   :initform nil)
   (children :accessor children
			 :initarg :children
			 :initform (make-array :element-type 'transform
								   :adjustable t
								   :fill-pointer 0)))

(defun make-transform ()
  (make-instance 'transform))

(defun transform->matrix (tm)
  "todo:"
  ())
