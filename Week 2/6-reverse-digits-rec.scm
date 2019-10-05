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

(define (count-digits-rec n)
    (if (> n 0)
        (+ 1 (count-digits-rec (quotient  n 10)))
        0))

(define (reverse-digits-rec n)
    (if (> n 0)
        (+ (* (fast-expt 10 (- (count-digits-rec n) 1))
              (remainder n 10)) 
           (reverse-digits-rec (quotient  n 10)))
        0))

    