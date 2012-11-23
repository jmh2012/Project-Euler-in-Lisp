;; Project Euler, Problem 20
;; Written in Lisp
;; jmh

(defun fact (n) 
  (if (eq n 1) 1
    (* n (fact(- n 1)))))

(defun euler-20 (n)
  (if (string= n "") 0
    (+ (parse-integer (subseq n 0 1)) (euler-20 (subseq n 1)))))

(euler-20 (write-to-string (fact 100)))