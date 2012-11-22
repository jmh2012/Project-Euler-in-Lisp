;; Project Euler problem 6
;; Written in Lisp
;; jmh

(defun square (x) (* x x))

(defun sum (n) 
  (if (eq n 0) 0 
    (+ n (sum (- n 1)))))

(defun sqrsum (n) 
  (if (eq n 0) 0
    (+ (square n) (sqrsum (- n 1)))))

(- (square (sum 100)) (sqrsum 100)) 