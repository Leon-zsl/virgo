(in-package :virgo)

(defparameter *color* sdl:*white*)

(defun init-sys ()
  (format nil "init sys ..."))
  
(defun main ()
  "the entry function"
  (init-sys)
  (sdl:with-init ()
	(sdl:window 960 640 :title-caption "virgo - a common lisp render engine")
	(setf (sdl:frame-rate) 60)

	(sdl:with-events ()
	  (:quit-event () t)
	  (:key-down-event ()
					   (sdl:push-quit-event))
	  (:idle ()
			 (when (sdl:mouse-left-p)
			   (setf *color* (sdl:color :r (random 255) :g (random 255) :b (random 255))))
			 (sdl:clear-display sdl:*black*)
			 (sdl:draw-box (sdl:rectangle-from-midpoint-* (sdl:mouse-x) (sdl:mouse-y) 40 40)
						   :color *color*)
			 (sdl:update-display)))))
