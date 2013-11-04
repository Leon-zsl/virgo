(in-package :virgo-math)

(defvar +vector-zero+ #(0 0 0 1))
(defvar +vector-one+ #(1 1 1 1))
(defvar +vector-x+ #(1 0 0 1))
(defvar +vector-negx+ #(-1 0 0 1))
(defvar +vector-y+ #(0 1 0 1))
(defvar +vector-negy+ #(0 -1 0 1))
(defvar +vector-z+ #(0 0 1 1))
(defvar +vector-negz+ #(0 0 -1 1))

(defun make-vector4 (&optional init-data)
  (if init-data
	  (make-array 4 :element-type 'float :initial-contents init-data)
	  (make-array 4 :element-type 'float :initial-element 0)))

(defun copy-vector4 (v)
  (copy-array v))
