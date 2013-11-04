(in-package :virgo-scene)

(defclass camera ()
  ((transform :accessor camera-transform
			  :initarg :transform
			  :initform (make-transform))
   (fov :accessor camera-fov
		:initarg :fov
		:initform 0)
   (near :accessor camera-near
		 :initarg :near
		 :initform 0)
   (far :accessor camera-far
		:initarg :far
		:initform 0)))

(defun make-camera ()
  (make-instance 'camera))
