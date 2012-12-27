;; Project Euler, Problem 55
;; jmh
;; incomplete

(defun reverseNum (n)
  (read-from-string (reverse (write-to-string n))))

(defun isPalindrome (s)
  (string= s (reverse s)))

;; Returns 1 if Lychrel number, 0 if not.
(defun lychrel (n i)
  (if (>= i 50) 0
    (if (= (isPalindrome (write-to-string (+ n (reverseNum n))) T)) 1
      (lychrel (+ n (reverseNum n)) (+ i 1)))))

(defun euler-55 (n i)
 (if (= n 10000) (i)
   (euler-55 (+ n 1) (+ i (lychrel n 0)