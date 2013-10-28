(in-package :virgo-scene)

(defclass scene ()
  ((camera :accessor camera
		  :initarg :camera
		  :initform nil)
  (lights :accessor lights
		  :initform (make-array :element-type 'light
								:adjustable t
								:fill-pointer 0))
  (entities :accessor entities
			:initform (make-hash-table))
  (renderer :accessor renderer
			:initarg :renderer
			:initform nil)))

(defun make-scene ()
  (make-instance 'scene
				 :camera (make-camera)
				 :renderer (make-renderer)))

(defun add-light (scene light)
  ())

(defun remove-light (scene light)
  ())

(defun get-entity (scene id)
  ())

(defun add-entity (scene id ent)
  ())

(defun remove-entity (scene id)
  ())

(defmethod render-scene (scene)
  ())
