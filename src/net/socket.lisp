(in-package :virgo-net)

(defclass socket ()
  ((ip :accessor socket-ip
	   :initarg :ip
	   :initform "0.0.0.0")
   (port :accessor socket-port
		 :initarg :port
		 :initform 0)
   (sendq :accessor socket-sendq
		  :initarg :sendq
		  :initform ())
   (recvq :accessor socket-recvq
		  :initarg :recvq
		  :initform ())))

(defun make-socket ()
  (make-instance 'socket))

(defun socket-connect (sock ip port)
  ())

(defun socket-disconnect (sock)
  ())

(defun socket-send (sock data)
  ())

(defun socket-recv (sock)
  ())
