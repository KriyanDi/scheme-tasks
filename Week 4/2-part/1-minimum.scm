(define (minimum list)
    (minimum-help 1000000 list))

(define (minimum-help min list)
    (if (null? list)
        min
        (if (< (car list) min)
            (minimum-help (car list) (cdr list))
            (minimum-help min (cdr list)))))