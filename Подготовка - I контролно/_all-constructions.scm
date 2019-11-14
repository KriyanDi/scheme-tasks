;Дясно натрупване - term(a) @ (term(next(a)) @ (... @ (term(b) @ nv)...)) 
(define (accumulate op nv a b term next)
    (if (> a b) nv
        (op (term a)
            (accumulate op nv (next a) b term next))))

;Ляво натрупване - (...((nv @term(a)) @ term(next(a)) @ ...) @ term(b)
(define (accumulate-i op nv a b term next)
    (if (> a b) nv
        (accumulate op (op nv (term a)) (next a) b term next)))

;Прилага операция върху всеки елемент от списъка
(define (map func list)
   (if (null? list) '()
       (cons (func (car list)) (map func (cdr list)))))

;Филтрира елементите на списък
(define (filter p? list)
    (cond ((null? list) list)
          ((p? (car list)) (cons (car list) (filter p? (cdr list))))
          (else (filter p? (cdr list)))))

;Дясно натрупване - a1 @ (a2 @ (... @ (an @ nv)...)) 
(define (foldr op nv list)
    (if (null? list) nv
        (op (car list) (foldr op nv (cdr list)))))

;Ляво натрупване - (...((nv @ a1) @ a2) @ ...) @ аn
(define (foldl op nv list)
    (if (null? list) nv
        (foldl op (op nv (car list)) (cdr list))))

;Помощна функция, която ни казва дали "нещо" е атом - числа, стрингове, символи, булиани, знаци
(define (atom? x)
    (and (not (pair? x))
         (not (null? x))))

;(deep-foldr <xоризонтално-дъно> <вертикално-дъно> <операция> <списък>)
(define (deep-fold nv term op list)
    (cond ((null? list) nv) ;хоризонтално дъно - достигане до празен списък
          ((atom? list) (term list)) ;вертикално дъно - достигане до атом
          (else (op (deep-fold nv term op (car list)) ;вертикална стъпка - обхождане на главата на list
                    (deep-foldr nv term op (cdr list)))))) ;вертикална стъпка - обхождане на опашката на list

;Помощна функция, обратна на cons
(define snoc (lambda (x list) (append list (list x))))

;------------------------------------------------------------------------------------------------------------