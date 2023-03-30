#lang scheme

;(Factorial n): Care of Satori
;(facorial n)
(define (factorial n)
  (if (= n 0)
      1 ;
      (* n (factorial (- n 1))))) ;loop continues recursively until the
                       ;factorial reaches zero to terminate the process

(display "Testing Factorials:")
(newline)
(display "Factorial of 8: ")
(factorial 8)

;(T-Ice n): Care of Satori
;helper function of (t-ice)
(define (test x) ;determines what to output depending on where in the
  ;count it is
    (cond
      ((and (= (remainder x 2) 0) (= (remainder x 3) 0)) (display "T-ICE "))
      ((= (remainder x 2) 0) (display "T "))
      ((= (remainder x 3) 0) (display "ICE "))
      (else (display x) (display " "))))

;(t-ice n)
(define (t-ice n)
  (do ((x 1 (add1 x)))
    ((> x n))
    (test x)));creates the loop to check the t-ice

(display "Testing T-Ice: ")
(newline)
(display "T-Ice of 8: ")
(t-ice 8)
(newline)

;Sum of Primes: Care of Meekah
(define (is-prime num)
  (define (iter i)
    (cond ((> i (/ num 2)) #t)
          ((= (modulo num i) 0) #f)
          (else (iter (+ i 1)))))
  (if (= num 1) #f
      (iter 2)))
;HELPER FUNCTION: Takes two argument 'num' and 'sum'
(define (sum-primes-helper num sum)
  (if (> num 100)
      sum
      (if (is-prime num)
          (sum-primes-helper (+ num 1) (+ sum num))
          (sum-primes-helper (+ num 1) sum))))

;Sets initial values of '1' and '0'
(define (Sumprimes n)
  (sum-primes-helper 1 0))

;Sumprimes (n) where n = 100
;For testing
(display "Test C: Sum of Primes")
(newline)
(display "Sum of prime numbers is: ")
(display (Sumprimes 100))
(newline)
(display "Test Successful!")

;Perform-op: Care of Meekah
(define (perform-op m n opt)
  (cond ((char=? opt #\+) (+ m n)) ;Addition
        ((char=? opt #\-) (- m n)) ;Subtraction
        ((char=? opt #\*) (* m n)) ;Multiplication
        ((char=? opt #\/) (quotient m n))  ;Division
        ((char=? opt #\%) (remainder m n)) ;Modulo
        (else (error "Invalid operator: " opt))))

(let ((m 10) ;Hardcoded input values
      (n 5)
      (opt #\*))
  (let ((result (perform-op m n opt)))
    (newline)
    (display "Test D: Perform Operations")
    (newline)
    (display "Result: ")
    (display result)
    (newline)))
    (display "Test Successful!")
    (newline)

;Calc-distance: Care of Meekah
(define (calc-distance x1 y1 x2 y2)
  (define dx (abs (- x2 x1))) ;dx = Absolute Value of x2-x1
  (define dy (abs (- y2 y1))) ;dy = Absolute Value of y2-y1
  (sqrt (+ (* dx dx) (* dy dy)))) ;Square root of (dx^2)+(dy^2)

(define x1 1) ; Hardcoded values
(define y1 2)
(define x2 5)
(define y2 6)

; Calling calc-distance x1 y1 x2 y2 to define distance (a helper function)
(define distance (calc-distance x1 y1 x2 y2))

(display "Test E: Calculate Distance")
(newline)
(display "Distance between (")
(display x1)
(display ", ")
(display y1)
(display ") and (")
(display x2)
(display ", ")
(display y2)
(display ") is ")
(display distance)
(newline)
(display "Test Successful!")

;Count-factors: Care of Satori
(define (count-factors m n)
  (let loop((n n) (acc 0))
    (cond ((= n 1) acc)
          ((= (remainder n m) 0) (loop (/ n m) (+ acc 1)))
          (else (loop (- n 1) acc)))))

(display "Testing Count Factors:")
(newline)
(display "Count factors of 48 and 4 is:")
(count-factors 4 48)
