;; Project Euler, Problem 1
;; Written in Lisp
;; jmh

(defun natural(n) 
	(if (or (= 0 (mod n 3)) (= 0 (mod n 5)))
		(+ n (natural (- n 1))
		(natural (- n 1)))))
