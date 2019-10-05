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

(define (count-digits-iter n)
    (count-digits-iter-help 0 n))

(define (count-digits-iter-help counter number)
    (if (= number 0)
        counter
        (count-digits-iter-help (+ counter 1) 
                                (quotient number 10))))

(define (reverse-digits-iter n)
    (reverse-digits-iter-help 0 n))

(define (reverse-digits-iter-help reverse-number number)
    (if (= number 0)
        reverse-number
        (reverse-digits-iter-help (+ reverse-number 
                                     (* (expt-iter 10 (- (count-digits-iter number) 1))
                                        (remainder number 10)))
                                  (quotient number 10))))