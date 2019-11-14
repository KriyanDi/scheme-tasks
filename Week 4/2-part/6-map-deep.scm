(define (map-deep func list)
    (cond ((null? list)'())
          ((pair? (car list)) (cons (map-deep func (car list))
                                    (map-deep func (cdr list))))
          (else (cons (func (car list))
                      (map-deep func (cdr list))))))
                      