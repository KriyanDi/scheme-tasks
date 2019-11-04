;append
(define (append list1 list2)
    (if (null? list1)
        list2
        (cons (car list1) 
              (append (cdr list1) list2))))

;reverse-rec
(define (reverse list)
    (if (null? list)
        '()
        (append (reverse (cdr list)) 
                (car list))))

;reverse-iter
(define (reverse- list)
  (reverse-help list '()))

(define (reverse-help list rev)
    (if (null? list)
        rev
        (reverse- (cdr list)
                 (append (car list) list))))
