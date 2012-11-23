;; Project Euler, Problem 25
;; Written in Lisp
;; jmh
;;
;; Very inefficient.

(defun fib (n)
  (if (= n 1) 1 (if (= n 0) 0
    (+ (fib (- n 1)) (fib (- n 2))))))

(defun euler-25 (n) 
  (if (eq (length (write-to-string (fib n))) 1000) n
    (euler-25 (+ n 1))))

(euler-25 0) 