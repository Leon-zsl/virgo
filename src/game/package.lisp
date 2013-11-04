(in-package :cl-user)

(defpackage :virgo-game
  (:use :cl
		:virgo-scene
		:virgo-res
		:virgo-net)
  (:export :game
		   :make-game
		   :game-scene
		   :game-startup
		   :game-shutdown
		   :game-update
		   :with-game-loop))
