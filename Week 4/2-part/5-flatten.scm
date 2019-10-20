;append
(define (append- list1 list2)
    (if (null? list1)
        list2
        (cons (car list1) 
              (append- (cdr list1) list2))))

;flatten
(define (flatten list)
    (cond ((null? list)
            '())
          ((pair? (car list))
            (append (flatten (car list))
                    (flatten (cdr list))))
          (else 
            (cons (car list)
                  (flatten (cdr list))))))