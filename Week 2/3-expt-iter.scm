(define (expt-iter x n)
    (expt-iter-help x 1 1 n))

(define (expt-iter-help number product counter max-count)
    (if (> counter max-count)
        product
        (expt-iter-help number
                        (* product number)
                        (+ counter 1)
                        max-count)))