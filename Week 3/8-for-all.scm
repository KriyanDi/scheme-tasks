(define (exists? predicate a b)
    (accumulate and #t predicate a b))

(define (accumulate combine null-value term a b)
    (if (> a b)
        null-value
        (combine (term a)
                 (accumulate combine
                             null-value
                             term
                             (+ a 1)
                             b))))