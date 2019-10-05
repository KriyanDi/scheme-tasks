(define (sum-devisor-iter n)
    (sum-devisor-iter-help 0 1 n))

(define (sum-devisor-iter-help sum counter max-count)
    (if (<= counter max-count)
        (if (= (remainder max-count counter) 0)
            (sum-devisor-iter-help (+ sum counter)
                                   (+ counter 1)
                                   max-count)
            (sum-devisor-iter-help sum
                                   (+ counter 1)
                                   max-count))
        sum))