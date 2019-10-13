(define repeated
    (lambda(func n)
        (lambda(x)
            (accumulate func n x))))

(define (accumulate combine n x)
    (if (= n 0)
        x
        (combine (accumulate combine
                             (- n 1)   
                             x))))