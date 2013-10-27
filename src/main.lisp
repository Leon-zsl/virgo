(in-package :virgo)

(defconstant +game-fps+ 30)

(defvar *game-instance* nil)

(defun main-init ()
  (format t "this is main init~%"))

(defun main-deinit ()
  (format t "this is main deinit~%"))

(defun main-loop ()
  (format t "this is main loop ~%"))

(defun main ()
  "the entry function"
  (main-init)
  (virgo-game:with-game-loop *game-instance* +game-fps+
	(main-loop))
  (main-deinit))

