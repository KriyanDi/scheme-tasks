(define (map func list)
    (if (null? list)'()
        (cons (func (car list)) (map func (cdr list)))))

(define (scale list x)
    (map (lambda (list) (* x list)) list))
