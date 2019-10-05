(define (count-devisor-rec n)
    (count-devisor-rec-help 1 n))

(define (count-devisor-rec-help counter number)
    (cond 
        ((= number 0) 
            0)
        ((> counter number)
            0)
        ((= (remainder number counter) 0)
            (+ 1
               (count-devisor-rec-help (+ counter 1)
                                        number)))
        (else (count-devisor-rec-help (+ counter 1)
                                      number))))