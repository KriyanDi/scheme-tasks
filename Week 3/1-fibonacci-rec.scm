(define (fibonacci-rec n)
    (cond
        ((= n 0) 0)
        ((= n 1) 1)
        (else (+ (fibonacci-rec (- n 2))
                 (fibonacci-rec (- n 1))))))