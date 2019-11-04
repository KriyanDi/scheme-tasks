;accumulate
(define (accumulate combine null-value term list)
    (if (null? list)
        null-value
        (combine (term list)
                 (accumulate combine
                             null-value
                             term
                             (cdr list)))))

;fold
(define (fold null-value combine list)
    (accumulate combine null-value car list))

;fold-flex-rec
(define (fold null-value combine list)
    (if(null? list)
        null-value
        (combine (car list)
                 (fold null-value
                       combine
                       list))))
;fold-flex-iter (reverse)
(define (fold null-value combine list res)
    (if(null? list)
        null-value
        (fold null-value 
              combine 
              (cdr list)
              (car)))