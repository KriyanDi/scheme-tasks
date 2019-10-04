(define (fact-iter n) (fact-iter 1 1 n))

(define (fact-iter-help product counter max-count)
    (if (> counter max-count)
        product
        (fact-iter-help (* counter product)
                        (+ counter 1)
                        max-count)))