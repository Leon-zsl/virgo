(in-package :virgo)

(defconstant +game-fps+ 30)

(defvar *game-instance* nil)

(defun main-init ()
  (cl:format t "this is main init~%"))

(defun main-deinit ()
  (cl:format t "this is main deinit~%"))

(defun main-loop ()
  ;(cl:format t "this is main loop ~%")
  (with-accessors ((scn game-scene)) *game-instance*
	(add-light scn (make-light 'spot-light)))
  (with-accessors ((scn game-scene)) *game-instance*
	(add-entity scn (make-entity)))
  (with-accessors ((scn game-scene)) *game-instance*
	(cl:format t "light count ~A~%" (light-count scn)))
  (with-accessors ((scn game-scene)) *game-instance*
	(cl:format t "entity count ~A~%" (entity-count scn))))

(defun main ()
  "the entry function"
  (main-init)
  (with-game-loop *game-instance* +game-fps+
  	(main-loop))
  (main-deinit))
