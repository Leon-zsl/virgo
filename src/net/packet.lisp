(in-package :virgo-net)

(defun make-packet (size)
  (make-array size :element-type 'unsigned-byte))
