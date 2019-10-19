(define (for-all? p? a b)
    (if (> a b)
        #t
        (if (p? a)
            #t
            (and (p? a)
                 (for-all? p? (+ a 1) b)))))