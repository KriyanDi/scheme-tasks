(define (accumulate combine null-value term list)
    (if (null? list)
        null-value
        (combine (term list)
                 (accumulate combine
                             null-value
                             term
                             (cdr list)))))

(define (fold null-value combine list)
    (accumulate combine null-value car list))