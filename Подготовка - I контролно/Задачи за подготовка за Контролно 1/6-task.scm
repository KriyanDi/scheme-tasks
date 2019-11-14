;помощни функции

;проверява, дали предикат е изпълнен за всички елементи от списъка
(define (for-all? p? l)
    (if (null? l) #t
        (and (p? (car l)) (for-all? p? (cdr l)))))

;член на списък
(define (is-member? x l)
    (if (null? l) #f
        (or (= x (car l)) (is-member? x (cdr l)))))
;--------------------------------------------------

;проверява, дали функция е ендоморфизъм
(define (is-em? l op f)
    (and (cond-1 l f) (cond-2 l f op)))

;условие-1 ∀x∈l f(x)∈l
(define (cond-1 l f)
    (for-all? (lambda(x) (is-member? (f x) l)) l))

;условие-2 ∀x,y∈l f(x) ⊕ f(y) = f(x ⊕ y) - (= (op (f x) (f y)) (f (op x y))
(define (cond-2 l f op)
    (for-all? (lambda(x) (for-all? (lambda (y) (= (op (f x) (f y)) (f (op x y)))) l)) l))