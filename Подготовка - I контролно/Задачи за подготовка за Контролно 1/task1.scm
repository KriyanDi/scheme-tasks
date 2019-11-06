(define (sechenie l1 l2))
(define (obedinenie l1 l2)
(define (razlika l1 l2))

(define (foldr nv op list)
    (if (null? list) nv
        (op (car list) (foldr nv (cdr list))))

(define (member x list)
    (foldr #t or list))
