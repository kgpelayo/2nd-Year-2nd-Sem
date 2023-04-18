#lang scheme
;A: Sum of Numbers :Care of Satori
(define (nested-sums lst)
  ;checks if the given lst is empty or not
  (cond ((null? lst) 0)
        ;as long as the first element is a number, it will continue to
        ;add the elements until the list has been emptied
        ;by continuing to recursively call the nested-sums function
        ((number? (car lst)) (+ (car lst) (nested-sums (cdr lst))))
        (else (+ (nested-sums (car lst)) (nested-sums (cdr lst))))))

(define (my-sums lis)
  ;takes in the input list, which can be nested, and adds the values and
  ;gives out the sum
  (nested-sums lis))

;calling the my-sums function which, in turn, calls on the nested-sums function
;that will then add the elements of the given array
(display "PART A: Sum of Numbers")
(newline)
(display "The Sum of the numbers (1 2 3 (4 5) 6 (7 (8) 9) is (")
                 ;v is included for the following input to be taken literally
(display (my-sums '(1 2 3 (4 5) 6 (7 (8) 9))))
(display ")")
(newline)(newline)

; B. Reverse List 1: Care of Meekah
(define (my-reverse1 lis) ; Takes an input list and returns a new list with the same elements in order.
  (define (reverse lis)
    (define (reverse-helper lis acc) ; 1st Helper Function that takes two arguments: (1) lis and (2) acc
      (if (null? lis) ; Checks if the list is empty
          acc ; Utilizes an accumulator
          (reverse-helper (cdr lis) (cons (car lis) acc)))) ; Tail recursion
    (reverse-helper lis '())) ; Initial accumulator
  (reverse lis)) ; Calls the reverse function with the input list, which returns the reversed list.

(display "PART B: Reverse List 1")
(newline)
(display "The Reverse list of (11 99 66 22 88)")
(display " is ")
; Displays the output of my-reverse1 function when called with the input list.
(display (my-reverse1 '(11 99 66 22 88)))

; C. Reverse List 2
(define (my-reverse2 lis)
  (define (reverse-iter lis acc)
    (if (null? lis) ; Checks if lis is an empty list using 'null?'. 
        acc ; Returned when lis is empty
        (reverse-iter (cdr lis) (cons (car lis) acc)))) ; Otherwise, the function calls itself recursively
  (reverse-iter lis '()))

(newline)
(newline)
(display "PART C: Reversing List 2")
(newline)
(display "The Reverse list of (12 55 22 1 100)")
(display " is ")
(display (my-reverse2 '(12 55 22 1 100)))

