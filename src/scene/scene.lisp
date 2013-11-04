(in-package :virgo-scene)

(defmacro add-if-not-exist (lst elem)
  `(when (not (member ,elem ,lst))
	 (pushnew ,elem ,lst)))

(defmacro remove-if-exist(lst elem)
  `(when (member ,elem ,lst)
	 (delete ,elem ,lst)))

(defclass scene ()
  ((camera :accessor scene-camera
		  :initarg :camera
		  :initform nil)
  (lights :accessor scene-lights
		  :initform ())
  (entities :accessor scene-entities
			:initform ())
  (renderer :accessor scene-renderer
			:initarg :renderer
			:initform nil)))

(defun make-scene ()
  (make-instance 'scene
				 :camera (make-camera)
				 :renderer (make-renderer)))

(defun add-light (scene light)
  (add-if-not-exist (scene-lights scene) light))

(defun remove-light (scene light)
  (remove-if-exist (scene-lights scene) light))

(defun light-count (scene)
  (length (scene-lights scene)))

(defun add-entity (scene entity)
  (add-if-not-exist (scene-entities scene) entity))

(defun remove-entity (scene entity)
  (remove-if-exist (scene-entities scene) entity))

(defun entity-count (scene)
  (length (scene-entities scene)))

(defmethod render-scene (scene)
  ())
