(define (reverse list)
    (if (null? list)
        '()
        (append (reverse (cdr list)) (car list))))