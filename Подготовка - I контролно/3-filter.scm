;Филтрира елементите на списък
(define (filter p? list)
    (cond ((null? list) list)
          ((p? (car list)) (cons (car list) (filter p? (cdr lsit))))
          (else (filter p? (cdr list)))))