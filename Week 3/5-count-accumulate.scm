(define (even? n) (= (remainder n 2) 0))

(define (odd? n) (not (even? n)))

(define (count term a b)
    (accumulate + 0 term a b))

(define (accumulate combine null-value term a b)
    (if (> a b)
        null-value
        (combine (if (term a) 1 0)
                 (accumulate combine
                             null-value
                             term
                             (+ a 1)
                             b))))