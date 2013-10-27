(defpackage #:virgo-net
  (:use :cl
		:cffi
		:usocket
		:userial)
  (:export #:make-socket
		   #:make-packet))
