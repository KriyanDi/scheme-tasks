(define (count-digits-iter n)
    (count-digits-iter-help 0 n))

(define (count-digits-iter-help counter number)
    (if (= number 0)
        counter
        (count-digits-iter-help (+ counter 1) 
                                (quotient number 10))))