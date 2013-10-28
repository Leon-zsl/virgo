(in-package :virgo-render)

(defclass material ()
  ((textures :accessor textures
			:initarg :textures
			:initform (make-array :element-type 'texture :adjustable t :fill-pointer 0))
   (vertex-shader :accessor vertex-shader
				  :initarg :vertex-shader
				  :initform nil)
   (pixel-shader :accessor pixel-shader
				 :initarg :pixel-shader
				 :initform nil)))

(defun make-material ()
  (make-instance 'material))
