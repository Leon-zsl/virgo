(in-package :virgo-math)

(defclass transform ()
  ((pos :accessor pos
			 :initarg :pos
			 :initform (make-vector4))
   (rot :accessor rot
			 :initarg :rot
			 :initform (make-quaternion))
   (scale :accessor scale
		  :initarg :scale
		  :initform (make-vector4))
   (parent :accessor parent
		   :initarg :parent
		   :initform nil)
   (children :accessor children
			 :initarg :children
			 :initform (make-array :element-type 'transform
								   :adjustable t
								   :fill-pointer 0))))

(defun make-transform ()
  (make-instance 'transform))

(defun transform->matrix (tm)
  "todo:"
  ())
