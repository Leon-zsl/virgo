(in-package :cl-user)

(defpackage :virgo-net
  (:use :cl
		:usocket
		:userial)
  (:export ;socket
           :socket
		   :socket-ip
		   :socket-port
		   :socket-sendq
		   :socket-recvq
           :make-socket
		   :socket-connect
		   :socket-disconnect
		   :socket-send
		   :socket-recv
		   ;packet
		   :packet
		   :packet-buffer
		   :packet-pos
		   :make-packet
		   :packet-size
		   :packet-put-float
		   :packet-put-int
		   :packet-put-short
		   :packet-put-byte
		   :packet-put-string
		   :packet-get-float
		   :packet-get-int
		   :packet-get-short
		   :packet-get-byte
		   :packet-get-string))
