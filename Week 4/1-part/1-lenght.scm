(define (length list)
    (if (null? list)
        0
        (+ 1 (length (cdr list)))))