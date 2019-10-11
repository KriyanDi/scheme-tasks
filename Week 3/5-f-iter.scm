(define (f-iter n)
    (f-iter-help 2 n 2 1 0))

(define (f-iter-help counter count-max f f-1 f-2)
    (cond ((< count-max 3)  count-max)
          ((= counter count-max) f)
          (else (f-iter-help (+ counter 1) 
                             count-max 
                             (+ f 
                                (* 2 f-1)
                                (* 3 f-2))
                             f
                             f-1))))