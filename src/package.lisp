(defpackage #:virgo
  (:use :cl
		:cffi

		:virgo-math
		:virgo-render
		:virgo-scene
		:virgo-res
		:virgo-net
		:virgo-game)
  (:export :main))
