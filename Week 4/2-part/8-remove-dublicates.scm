;member
(define (exists? p? list)
  (if (null? list)
      #f
      (if (p? (car list))
          #t
          (or (p? (car list))
              (exists? p? (crd list))))))

;append
(define (append list1 list2)
    (if (null? list1)
        list2
        (cons (car list1) 
              (append (cdr list1) list2))))

;remove-dublicates
(define (remove-dublicates list)
    (remove-dublicates-help list '()))

;remove-dublicates-help
(define (remove-dublicates-help src new)
    (if (null? src) new
        (if (member (car src) new)
            (remove-dublicates-help (cdr src) new)
            (remove-dublicates-help (cdr src) (append new (list (car src)))))))