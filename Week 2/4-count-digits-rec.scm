(define (count-digits-rec n)
    (if (> n 0)
        (+ 1 (count-digits-rec (quotient  n 10)))
        0))