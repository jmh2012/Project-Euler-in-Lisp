;; Project Euler, Problem 17
;; jmh
;; incomplete

(defun strip n
	())
	
(defun next-place (n p)
	(sum-letters (- n (* (strip n) p)))
	
(defun sum-letters n
	(if (>= n 1000)
		(+ (strip n) 6 (next-place (n 1000))) 
	(if (>= n 100)
		(+ (strip n) 7 (next-place (n 100)))
	(if (>= n 10)
		(tens n)
	(digit n)))))

(defun digit n
	(if (or (= n 1.0) (= n 2.0) (= n 6.0)) 3.0
	(if (or (= n 4.0) (= n 5.0) (= n 9.0)) 4.0
	(if (or (= n 3.0) (= n 7.0) (= n 8.0)) 5.0))))  

(defun euler-17 (x y) 
	(if (= x y) 
		(sum-letters x)
		(+ (sumletters x) (euler-17 (+ x 1) y))))
		
