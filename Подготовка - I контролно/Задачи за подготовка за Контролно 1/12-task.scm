;помощни функции 

;максимален елемент на списък (поне един елемент)
(define (max l)
  (if (null? l) l
      (max-help l (car l))))

(define (max-help l cur-max)
  (if (null? l) cur-max
      (max-help (cdr l) (if (> (car l) cur-max) (car l) cur-max))))

;премахва конкретен елемент
(define (remove x l)
    (if (null? l) `()
        (if (= x (car l)) (cdr l)
            (cons (car l) (remove x (cdr l))))))

;селекшън сорт
(define (selection-sort l)
    (if (null? l) '()
        (cons (max l) (selection-sort (remove (max l) l)))))

;направи списък от цифри
(define (make-list n)
    (if (= n 0) `()
        (cons (list (remainder n 10)) (make-list (quotient n 10)))))

;фолд
(define (foldr op nv l)
    (if (null? l) nv
        (op (car l) (foldr op nv (cdr l)))))

;флатън
(define (flatten l)
    (foldr append '() l))

;повдига число на дадена степен
(define (pow x n)
    (if (= n 0) 1
        (* x (pow x (- n 1)))))

;сумира цифрите от списък
(define (sum-digits l len)
    (if (null? l) 0
        (+ (* (car l) (pow 10 len)) (sum-digits (cdr l) (- len 1)))))
;--------------------------------------------------

;сортиран списък на цифрите на числото
(define (l-digits n)
    (selection-sort (flatten (make-list n))))

;сортира цифрите на число в низходящ ред
(define (sort-digits n)
    (sum-digits (l-digits n) (- (length (l-digits n)) 1)))