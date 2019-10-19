(define (sum list)
    (if (null? list)
        0
        (+ (car list) (sum (cdr list)))))