(define (even? n) (= (remainder n 2) 0))

(define (expt-iter x n)
    (expt-iter-help x 1 n))

(define (expt-iter-help number product counter)
    (if (= counter 0)
        product
        (cond
            ((even? counter)
                (expt-iter-help number
                                (* product number number)
                                (- counter 2)))
            (else
                (expt-iter-help number
                                (* product number)
                                (- counter 1))))))