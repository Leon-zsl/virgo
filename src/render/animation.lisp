(in-package :virgo-render)

(defclass animation ()
  ())

(defun make-animation ()
  (make-instance 'animation))

(defmethod animate ((animation animation))
  ())
