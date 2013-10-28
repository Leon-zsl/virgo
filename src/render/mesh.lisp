(in-package :virgo-render)

(defclass mesh ()
  ((position-data :accessor position-data
			:initarg :position-data
			:initform (make-array :element-type 'float :adjustable t :fill-pointer 0))
   (color-data :accessor color-data
			   :initarg :color-data
			   :initform (make-array :element-type 'integer :adjustable t :fill-pointer 0))
   (normal-data :accessor normal-data
				:initarg :normal-data
				:initform (make-array :element-type 'float :adjustable t :fill-pointer 0))
   (index-data :accessor index-data
			:initarg :index-data
			:initform (make-array :element-type 'integer))))

(defun make-mesh ()
  (make-instance 'mesh))
