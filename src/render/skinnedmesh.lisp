(in-package :virgo-render)

(defclass skinnedmesh (mesh)
  ((weight-data :accessor weight-data
				:initarg :weight-data
				:initform (make-array :element-type 'float :adjustable t :fill-pointer 0))))

(defun make-skinnedmesh ()
  (make-instance 'skinnedmesh))
