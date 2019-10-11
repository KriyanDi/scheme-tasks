(define (f-rec n)
    (if (< n 3) n
        (+ (f-rec (- n 1)) 
           (* 2 (f-rec (- n 2)))
           (* 3 (f-rec (- n 3))))))