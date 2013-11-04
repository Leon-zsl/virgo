(in-package :virgo-math)

(defvar +quaternion-zero+ #(0 0 0 0))
(defvar +quaternion-identity+ #(0 0 0 1))

(defun make-quaternion(&optional init-data)
  (if init-data
	  (make-array 4 :element-type 'float :initial-contents init-data)
	  (make-array 4 :element-type 'float :initial-element 0)))

(defun copy-quaternion (q)
  (copy-array q))

(defun quaternion->matrix44 (q)
  ())

(defun quaternion-multiply (q0 q1)
  ())

(defun quaternion-multiply-vector4 (q v)
  ())
