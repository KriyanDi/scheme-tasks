(define (fibonacci-iter n)
    (define (fibonacci-iter-help counter fib fib-1)
        (if (= counter n) fib
            (fibonacci-iter-help (+ counter 1)
                                 (+ fib fib-1)
                                 fib)))
    (if (= n 0) 0
      (fibonacci-iter-help 1 1 0)))