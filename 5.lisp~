;; Project Euler, Problem 5 
;; Writen in Lisp
;; jmh

(defun divisible (n x) 
  (if (eq x 21) t 
    (if (eq 0 (mod n x)) (divisible n (+ x 1))
      nil)))

(defun euler-5 (n x) 
  (if (divisible n x) n 
    (count (+ n 1) x)))

(euler-5 1 1)