(define (sum-iter start end)
    (sum-iter-help 0 start end))

(define (sum-iter-help sum counter max-count)
    (if (> counter max-count)
        sum
        (sum-iter-help (+ sum counter)
                       (+ counter 1)
                       max-count)))