
;takes elements to n
(define (take-elements list n)
    (if (or (null? list)
            (= n 0))
        '()
        (cons (car list) 
              (take-elements (cdr list) 
                             (- n 1)))))

;removes frist elements to n elements
(define (remove-elements list n)
    (if (or (= n 0)
            (null? list))
        list
        (remove-elements (cdr list)
                         (- n 1))))

;chunk
(define (chunk list n)
    (if (null? list)
        '()
        (cons (take-elements list n)
              (chunk (remove-elements list n)
                     n))))