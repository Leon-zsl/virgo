(in-package :virgo-math)

(defun make-vector4 (&optional init-data)
  (if init-data
	  (make-array 4 :element-type 'float :initial-contents init-data)
	  (make-array 4 :element-type 'float :initial-element 0)))

(defun copy-vector4 (v)
  (copy-array v))
