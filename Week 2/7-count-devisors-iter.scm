(define (count-devisor-iter n)
    (count-devisor-iter-help 0 1 n))

(define (count-devisor-iter-help devisors counter max-count)
    (if (<= counter max-count)
        (if (= (remainder max-count counter) 0)
            (count-devisor-iter-help (+ devisors 1)
                                     (+ counter 1)
                                     max-count)
            (count-devisor-iter-help devisors
                                     (+ counter 1)
                                     max-count))
        devisors))