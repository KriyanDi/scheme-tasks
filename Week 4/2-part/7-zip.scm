(define (zip list1 list2)
    (if (null? list1) '()
        (cons (list (car list1) (car list2))
              (zip (cdr list1) (cdr list2)))))