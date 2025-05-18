;; Caskade Programming Language Adapter for LISP
;; Created on May 18, 2025
;; By Chris Kelsey of Blue Vision Studios

(defparameter *true* 1)
(defparameter *false* 0)

(defun caskade-not (x)
  (if (= x *true*)
      *false*
      *true*))

(defun caskade-and (a b)
  (if (and (= a *true*) (= b *true*))
      *true*
      *false*))

(defun caskade-or (a b)
  (if (or (= a *true*) (= b *true*))
      *true*
      *false*))

(defun caskade-eq (a b)
  (if (= a b)
      *true*
      *false*))

(defun caskade-neq (a b)
  (if (/= a b)
      *true*
      *false*))

(defun caskade-to-bool (x)
  (if (= x 0)
      *false*
      *true*))
