(in-package :virgo-math)

(defun make-matrix44 (&optional init-contents)
  (if init-contents
	  (make-array 16 :element-type 'float :initial-contents init-contents)
	  (make-array 16 :element-type 'float :initial-element 0)))

(defun copy-matrix44 (m)
  (copy-array m))
