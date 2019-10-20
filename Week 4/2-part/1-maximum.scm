(define (maximum list)
    (maximum-help -1000000 list))

(define (maximum-help max list)
    (if (null? list)
        max
        (if (> (car list) max)
            (maximum-help (car list) (cdr list))
            (maximum-help max (cdr list)))))