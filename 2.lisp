;; Project Euler, Problem 2
;; Written in Lisp
;; jmh

(defun fib(n)
	(if (or (= n 0) (= n 1))
		1
		(+ (fib (- n 1)) (fib (- n 2)))))

(defun euler-2 (n)
	(if (= n 1)
		1
		(if (= 0 (mod 2 (fib n)))
			(+ n (sumfib (- n 1)))
			(sumfib (- n 1)))))
