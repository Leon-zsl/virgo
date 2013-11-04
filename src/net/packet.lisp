(in-package :virgo-net)

(defclass packet ()
  ((buffer :accessor packet-buffer
		   :initarg :buf
		   :initform (make-array 0
								 :element-type 'unsigned-byte
								 :adjustable t
								 :fill-pointer 0))
   (pos :accessor packet-pos
		:initarg :pos
		:initform 0)))

(defun make-packet (size)
  (make-instance 'packet
				 :buf (make-array size
								  :element-type 'unsigned-byte
								  :adjustable t
								  :fill-pointer 0)
				 :pos 0))

(defun packet-size (pck)
  (packet-pos pck))

(defun packet-put-float (pck val)
  ())

(defun packet-put-int (pck val)
  ())

(defun packet-put-short (pck val)
  ())

(defun packet-put-byte (pck val)
  ())

(defun packet-put-string (pck val)
  ())

(defun packet-get-float (pck val)
  ())

(defun packet-get-int (pck val)
  ())

(defun packet-get-short (pck val)
  ())

(defun packet-get-byte (pck val)
  ())

(defun packet-get-string (pck val)
  ())
