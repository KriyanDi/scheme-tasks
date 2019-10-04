(define (even? n) (= (remainder n 2) 0))

(define (fast-expt x n)
    (if (> n 0)
        (cond
            ((even? n)
                (* (fast-expt x (/ n 2))
                   (fast-expt x (/ n 2))))
            (else
                (* x (fast-expt x (- n 1)))))
        1))