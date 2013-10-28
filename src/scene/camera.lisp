(in-package :virgo-scene)

(defclass camera ()
  ((transform :accessor transform
			  :initarg :transform
			  :initform (make-transform))
   (fov :accessor fov
		:initarg :fov
		:initform 0)
   (near :accessor near
		 :initarg :near
		 :initform 0)
   (far :accessor far
		:initarg :far
		:initform 0)))

(defun make-camera ()
  (make-instance 'camera))
