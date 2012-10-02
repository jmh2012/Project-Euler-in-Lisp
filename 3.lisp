;; Project Euler, Problem 3 (incomplete)
;; Written in List
;; jmh

(defun isprime(n) ())

(defun natural(n) 
	(if (or (= 0 (mod n 3)) (= 0 (mod n 5)))
		(+ n natural (- n 1)
		(natural (- n 1)))))
