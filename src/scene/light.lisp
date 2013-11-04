(in-package :virgo-scene)

(defclass light ()
   ((diffuse :accessor light-diffuse
			:initarg :diffuse
			:initform +color-white+)
   (ambient :accessor light-ambient
			:initarg :ambient
			:initform +color-white+)
   (specular :accessor light-specular
			 :initarg :specular
			 :initform +color-white+)))

(defclass direction-light (light)
  ((direction :accessor direction-light-dir
			  :initarg dir
			  :initform (make-vector4 '(0 0 0 1)))))

(defclass point-light (light)
  ((position :accessor point-light-pos
			 :initarg :pos
			 :initform (make-vector4 '(0 0 0 1)))
   (attenuation :accessor point-light-attenuation
				:initarg attenuation
				:initform 0)))


(defclass spot-light (point-light)
  ((expt :accessor spot-light-expt
		 :initarg :expt
		 :initform 1)
   (cutoff :accessor spot-light-cutoff
		   :initarg :cutoff
		   :initform 45)))

(defun make-light (type)
  (apply #'make-instance (list type)))
