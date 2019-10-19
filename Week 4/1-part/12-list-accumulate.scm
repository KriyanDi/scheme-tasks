(define (accumulate combine null-value term list)
    (if (null? list)
        null-value
        (combine (term list)
                 (accumulate combine
                             null-value
                             term
                             (cdr list)))))