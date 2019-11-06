;помощни функции

;филтър
(define (filter p? l)
    (cond ((null? l) l)
          ((p? (car l)) (cons (car l) (filter p? (cdr l))))
          (else (filter p? (cdr l)))))

;член
(define (is-member? x l)
    (if (null? l) #f
        (or (= x (car l)) (is-member? x (cdr l)))))

;квадрат на число
(define (square x) (* x x))
;---------------------------------------------------------------

;намира списък от елементи
(define (find-el f l)
    (filter (lambda (x) (is-member? (f x) l)) l))

;примерен вход
;(find-el (lambda (x) (square x)) '(2 -2 3 9 4)) -> (2 -2 3)
;(find-el (lambda (x) (square x)) '(2 -2 3 9 4 1 -1 -3)) -> (2 -2 3 1 -1 -3)