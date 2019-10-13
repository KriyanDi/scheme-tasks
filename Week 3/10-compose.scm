(define compose 
    (lambda (func1 func2) 
        (lambda (x) (func1 (func2 x)))))