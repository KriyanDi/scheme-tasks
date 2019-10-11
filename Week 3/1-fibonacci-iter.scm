(define (fibonacci-iter n)
    (fibonacci-iter-help 1 n 1 0))

(define (fibonacci-iter-help counter count-max fib fib-1)
    (cond ((= count-max 0)  0)
          ((= counter count-max) fib)
          (else (fibonacci-iter-help (+ counter 1) 
                                     count-max 
                                     (+ fib fib-1) 
                                     fib))))