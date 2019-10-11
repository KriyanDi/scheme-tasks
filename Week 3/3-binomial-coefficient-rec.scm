(define (binomial-coefficient row index)
    (cond 
        ((or (= index 1)
             (= index row))
            1)
        (else
            (+ (binomial-coefficient (- row 1) (- index 1))
               (binomial-coefficient (- row 1) index)))))