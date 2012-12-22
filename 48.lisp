;; Project Euler, Problem 48
;; jmh

(defun self-power-series (x)
	(if (= x 0) 0
	(+ (expt x x) (self-power-series (- x 1)))))

(self-power-series 1000)
