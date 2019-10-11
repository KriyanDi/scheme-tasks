(define (sum-devisor-rec n)
    (sum-devisor-rec-help 1 n))

(define (sum-devisor-rec-help counter number)
    (cond 
        ((= number 0) 
            0)
        ((> counter number)
            0)
        ((= (remainder number counter) 0)
            (+ counter
               (sum-devisor-rec-help (+ counter 1)
                                        number)))
        (else (sum-devisor-rec-help (+ counter 1)
                                       number))))
        
(sum-devisor-rec 10)