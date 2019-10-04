(define (even? n) (= (remainder n 2) 0))

(define (odd? n) (not (even? n)))