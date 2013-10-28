(in-package :virgo-render)

(defclass texture ()
  ((texture-data :accessor texture-data
				 :initarg :texture-data
				 :initform (make-array :element-type 'integer :adjustable t :fill-pointer 0))))
