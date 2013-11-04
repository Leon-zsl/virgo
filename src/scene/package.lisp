(in-package :cl-user)

(defpackage :virgo-scene
  (:use :cl
		:virgo-math
		:virgo-render)
  (:export ;camera
           :camera
		   :camera-transform
		   :camera-fov
		   :camera-near
		   :camera-far
		   :make-camera
		   ;light
		   :light
		   :light-diffuse
		   :light-ambient
		   :light-specular
		   :direction-light
		   :direction-light-dir
		   :point-light
		   :point-light-pos
		   :point-light-attenuation
		   :spot-light
		   :spot-light-expt
		   :spot-light-cutoff
		   :make-light
		   ;entity
		   :entity
		   :entity-transform
		   :entity-mesh
		   :entity-animation
		   :entity-material
		   :make-entity
		   ;; scene api
		   :scene
		   :scene-camera
		   :scene-lights
		   :scene-entities
		   :scene-renderer
		   :make-scene
		   :render-scene
		   :add-light
		   :remove-light
		   :light-count
		   :add-entity
		   :remove-entity
		   :entity-count))
