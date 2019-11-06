;помощни функции

;филтър
(define (filter p? l)
    (cond ((null? l) l)
          ((p? (car l)) (cons (car l) (filter p? (cdr l))))
          (else (filter p? (cdr l)))))

;член
(define (is-member? x l)
    (if (null? l) #f
        (or (= x (car l)) (is-member? x (cdr l)))))

;премахване на дубликати
(define (remove-duplicates l)
    (cond ((null? l) l)
        ((is-member? (car l) (cdr l)) (remove-duplicates (cdr l)))
        (else (cons (car l) (remove-duplicates (cdr l))))))
;---------------------------------------------------------------

;сечение
(define (sechenie l1 l2)
    (cond ((< (length l1) (length l2)) (sechenie-help l1 l2)) 
            (else (sechenie-help l2 l1))))

(define (sechenie-help l1 l2)
    (filter (lambda (x) (is-member? x l2)) l1))
;---------------------------------------------------------------

;обединение - с повторение на елементите
(define (obedinenie-pov l1 l2)
    (append l1 l2))

;обединение - без повторение на елементите
(define (obedinenie-bez-pov l1 l2)
    (remove-duplicates (append l1 l2)))
;---------------------------------------------------------------

;разлика
(define (razlika l1 l2)
    (filter (lambda (x) (not (is-member? x (sechenie l1 l2)))) l1))


