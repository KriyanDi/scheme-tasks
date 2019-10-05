(define (sum-digits-iter n)
    (sum-digits-iter-help 0 n))

(define (sum-digits-iter-help sum number)
    (if (= number 0)
        sum
        (sum-digits-iter-help (+ sum (remainder number 10)) 
                              (quotient number 10))))