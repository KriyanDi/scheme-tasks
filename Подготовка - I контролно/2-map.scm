;Прилага операция върху всеки елемент от списъка
(define (map func list)
   (if (null? list) '()
       (cons (func (car list)) (map func (cdr list)))))