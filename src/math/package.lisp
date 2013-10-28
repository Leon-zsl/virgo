(defpackage #:virgo-math
  (:use #:cl
		#:cffi)
  (:export #:make-matrix44
		   #:copy-matrix44
		   #:make-vector4
		   #:copy-vector4
		   #:make-quaternion
		   #:copy-quaternion
		   #:make-transform))
