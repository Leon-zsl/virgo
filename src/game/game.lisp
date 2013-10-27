(in-package :virgo-game)

(defclass game ()
  ((scene :reader game-scene
		  :initarg :scene
		  :initform nil)
   (camera :reader game-camera
		   :initarg :camera
		   :initform nil)
   (entities :reader entities
			 :initarg :entities
			 :initform (make-hash-table))))

(defun make-game ()
  (make-instance 'game))

(defun game-startup (g)
  (format t "game module start~%"))

(defun game-shutdown (g)
  (format t "game module shutdown~%"))

(defun game-update (g)
  (format t "game module update~%"))

(defmacro with-game-loop (g fps &body body)
  (let ((gg (gensym))
		(time (gensym))
		(tick (gensym))
		(delta (gensym))
		(frame (gensym)))
	`(let ((,gg (make-game))
		   (,time (/ 1.0 ,fps))
		   (,tick 0.0)
		   (,delta 0.0)
		   (,frame 0))
	   (when ,gg
		 (setf ,g ,gg)
		 (unwind-protect
			  (progn
				(game-startup ,gg)
		  		(loop
				   (let ((,delta (/ (- (get-internal-real-time) ,tick) internal-time-units-per-second)))
					 (if (>= ,delta ,time)
						 (progn
						   ;(format t "run time: ~a, ~a, ~a~%" ,time ,tick ,delta)
						   (setf ,tick (get-internal-real-time))
						   (game-update ,gg)
						   ,@body)
						 (progn
						   ;(format t "sleep time: ~a,~a,~a~%" ,time ,tick ,delta)
						   (sleep (- ,time ,delta)))))
				   ;(format t "frame: ~a~%" ,frame)
				   (incf ,frame)))
			  (game-shutdown ,gg)
			  (setf ,g nil))))))
