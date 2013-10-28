(in-package :virgo-render)

(defclass renderer ()
  ())

(defun make-renderer ()
  (make-instance 'renderer))

(defmethod clear-background ((renderer renderer))
  ())

(defmethod prepare-render ((renderer renderer))
  ())

(defmethod finish-render ((renderer renderer))
  ())

(defmethod set-camera ((renderer renderer) fov near far model-view-matrix)
  ())

(defmethod set-light ((renderer renderer) light-data)
  ())

(defmethod set-material ((renderer renderer) (material material))
  ())

(defmethod render-mesh ((renderer renderer) (mesh mesh))
  ())
