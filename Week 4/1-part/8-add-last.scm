(define (add-last element list)
    (if (null? list)
        (cons element '())
        (cons (car list) (add-last element (cdr list)))))