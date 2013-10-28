(in-package :virgo-scene)

(defclass light ()
  ((transform :accessor transform
			  :initarg :transform
			  :initform (make-transform))))

(defun make-light ()
  (make-instance 'light))
