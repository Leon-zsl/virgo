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
			 :initform ())))

(defun make-transform ()
  (make-instance 'transform))

(defun transform-rotation (transform)
  ())

(defun (setf transform-rotation) (transform rot)
  ())

(defun transform-position (transform)
  ())

(defun (setf transform-position) (transform pos)
  ())

(defun transform-rotate (transform rot)
  ())

(defun transform-move (transform mov)
  ())

(defun transform-lookat (transform target up)
  ())

(defun transform->matrix (tm)
  "todo:"
  ())
