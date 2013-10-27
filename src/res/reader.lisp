(in-package :virgo-res)

(defun read-mesh (file-name)
  (make-mesh))

(defun read-animation (file-name)
  (make-animation))

(defun read-texture (file-name)
  (make-array 0 :element-type 'unsigned-byte))

(defun read-material (file-name)
  (make-material))

(defun read-entity (file-name)
  (make-entity))

(defun read-scene (file-name)
  (make-scene))
