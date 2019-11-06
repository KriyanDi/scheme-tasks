;Ползва се за свиване на ВЛОЖЕНИ списъци

;Помощна функция, която ни казва дали "нещо" е атом - числа, стрингове, символи, булиани, знаци
(define (atom? x)
    (and (not (pair? x))
         (not (null? x))))

;(deep-foldr <xоризонтално-дъно> <вертикално-дъно> <операция> <списък>)
(define (deep-foldr nv term op list)
    (cond ((null? list) nv) ;хоризонтално дъно - достигане до празен списък
          ((atom? (car list)) (term (car list))) ;вертикално дъно - достигане до атом
          (else (op (deep-foldr nv term op (car list)) ;вертикална стъпка - обхождане на главата на list
                    (deep-foldr nv term op (cdr list)))))) ;вертикална стъпка - обхождане на опашката на list