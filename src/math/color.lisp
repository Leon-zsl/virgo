(in-package :virgo-math)

(defvar +color-white+ #(1 1 1 1))
(defvar +color-black+ #(0 0 0 1))
(defvar +color-red+ #(1 0 0 1))
(defvar +color-green+ #(0 1 0 1))
(defvar +color-blue+ #(0 0 1 1))
(defvar +color-grey+ #(0.5 0.5 0.5 1))

(defun make-color (r g b a)
  (make-array 4
			  :element-type 'float
			  :init-contents (list r g b a)))

(defun color-r (color)
  (aref color 0))

(defun color-g (color)
  (aref color 1))

(defun color-b (color)
  (aref color 2))

(defun color-a (color)
  (aref color 3))

(defun (setf color-r) (color r)
  (setf (aref color 0) r))

(defun (setf color-g) (color g)
  (setf (aref color 1) g))

(defun (setf color-b) (color b)
  (setf (aref color 2) b))

(defun (setf color-a) (color a)
  (setf (aref color 3) a))




