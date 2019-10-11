(define (fibonacci-iter n)
    (fibonacci-iter-help 1 n 1 0))

(define (fibonacci-iter-help counter count-max fib fib-1)
    (if (= counter count-max) fib
        (fibonacci-iter-help (+ counter 1) 
                             count-max 
                             (+ fib fib-1) 
                             fib)))