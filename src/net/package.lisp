(defpackage #:virgo-net
  (:use :cl
		:usocket
		:userial)
  (:export #:make-socket
		   #:make-packet))
