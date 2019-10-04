(define (expt x n)
    (if (> n 0)
        (* x (expt x (- n 1)))
        1))