;; Project Euler, Problem 7
;; jmh
;; For stack overflows when checking for asked 10001st prime,
;; but besides that the code works fine.

(defun isprime (x)
	(if (< x 2)
		(return-from isprime 0)
	(dotimes (i (+ (ceiling (sqrt x)) 1))
	(if (> i 1)
		(if (< i x)
			(if (= (mod x i) 0)
				(return-from isprime 0))))))
	(return-from isprime 1))
	
(defun euler-7 (n x)
	(if (= x 0) (- n 1)
		(if (= (isprime n) 1) (euler-7 (+ n 1) (- x 1))
			(euler-7 (+ n 1) x))))
