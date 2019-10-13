(define double 
    (lambda (func) 
        (lambda (x) (func (func x)))))