(in-package :cl-user)

(defpackage #:virgo
  (:use :cl
		:virgo-math
   		:virgo-render
   		:virgo-scene
   		:virgo-res
   		:virgo-net
  		:virgo-game)
  (:export :main))
