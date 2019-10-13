(define (binomial-coefficient-rec row index)
    (cond 
        ((or (= index 1)
             (= index row))
             1)
        (else
            (+ (binomial-coefficient-rec (- row 1) (- index 1))
               (binomial-coefficient-rec (- row 1) index)))))