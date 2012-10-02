;; Project Euler, Problem 2
;; Written in Lisp
;; jmh

(defun fib(n)
	(if (or (= n 0) (= n 1))
		1
		(+ (fib (- N 1)) (fib (- N 2)))))

(defun sumfib(n)
	(if (= 0 (mod 2 (fib n)))
		(+ n (sumfib (- n 1)))
		(sumfib (- n 1))))
