(defpackage #:virgo-game
  (:use :cl
		:virgo-math
		:virgo-render
		:virgo-scene
		:virgo-res
		:virgo-net)
  (:export :make-game
		   :game-startup
		   :game-shutdown
		   :game-update
		   :with-game-loop))
