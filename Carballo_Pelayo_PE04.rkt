#lang scheme
; Programming Exercise 04: Scheme Programming 2
; Developed by: Meekah Yzabelle A. Carballo (2021-05127)
;               Khublei Mo Satori Pelayo (2021-00529)

; A: Sum of Numbers: Care of Satori
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

; calling the my-sums function which, in turn, calls on the nested-sums function
; that will then add the elements of the given array
(display "PART A: Sum of Numbers")
(newline)
(display "The Sum of the numbers (1 2 3 (4 5) 6 (7 (8) 9)) is ")
        ;v is included for the following input to be taken literally
(my-sums '(1 2 3 (4 5) 6 (7 (8) 9)))
(newline)

; B. Reverse List 1: Care of Meekah
(define (my-reverse1 lis) ; Defines a new function my-reverse1 that takes a single argument 'lis'
  (reverse-helper lis '())) ; First argument is 'lis', second argument is an empty list

(define (reverse-helper lis reversed) ; 'lis' is the input list to be reversed, 'reversed' is an accumulating list that will hold the reversed elements
  (if (null? lis) ; Checks if 'lis' is empty
      reversed ; If 'lis' is empty, it will return 'reversed' which is the reversed list as result
      (reverse-helper (cdr lis) (cons (car lis) reversed)))) ; Otherwise, 'cdr' removes the first element from 'lis', takes it with 'car lis', and eventually adding it to the 'resersed' list through '(cons (car lis) reversed)'
                                                                  ; Calls 'reverse-helper' recursively without the first element of 'is' and a new list that has the first elements of 'lis' added to the front of 'reversed'
                                                                  ; Works like a Stack data structure (FILO)
(display "PART B: Reverse List 1")
(newline)
(display "The Reverse list of (11 99 66 22 88) is ")
(my-reverse1 '(11 99 66 22 88)) ; Calls my-reverse1 with specific 'lis' as an argument

; C. Reverse List 2
(define (my-reverse2 lis) ; Defines a new function my-reverse1 that takes a single argument 'lis'
  (if (null? lis) ; Checks if 'lis' is empty
      '() ; If it is, it returns the empty list
      (let ((reversed '())) ; Initialize an empty list to hold the reversed elements
        (do ((lst lis (cdr lst))) ; Initialize a do loop with 'lst' holding 'lis' and iterating with 'cdr lst'
            ((null? lst) reversed) ; Once the end of the list is reached, return the 'reversed' list
          (set! reversed (cons (car lst) reversed)))))) ; Prepend the first element of 'lst' to the 'result' list using 'cons' and update the 'reversed' list with 'set!'

(newline)
(display "PART C: Reversing List 2")
(newline)
(display "The Reverse list of (12 55 22 1 100)")
(display " is ")
(my-reverse2 '(12 55 22 1 100)) ; Calls my-reverse2 with specific 'lis' as an argument
