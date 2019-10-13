(define (identity x) x)
(define (2+ x) (+ x 2))

(define (sum term a step b)
    (accumulate + 0 term a step b))

(define (product term a step b)
    (accumulate * 1 term a step b))

(define (accumulate combine null-value term a step b)
    (if (> a b)
        null-value
        (combine (term a)
                 (accumulate combine
                             null-value 
                             term
                             (step a)
                             step
                             b))))