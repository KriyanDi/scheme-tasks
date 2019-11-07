;помощни функции

;член 
(define (is-member? x l)
    (if (null? l) #f
        (or (= x (car l)) (is-member? x (cdr l)))))

;проверява, дали предикат е изпълнен за всички елементи на списъка
(define (for-all? p? l)
    (if (null? l) #t
        (and (p? (car l)) (for-all? p? (cdr l)))))

;проверява, дали предикат е изпълнен за всички елементи на списъка
(define (for-each? p? l)
    (if (null? l) #f
        (or (p? (car l)) (for-each? (p? (cdr l))))))

;квадрат на число
(define (square x) (* x x))
;--------------------------------------------------

;намира дали функцията е сюрекция
(define (is-sur? l1 l2 f)
    (and (cond-1 l1 l2 f)
         (cond-2 l1 l2 f)))

;условие-1 ∀x∈l₁ f(x)∈l₂
(define (cond-1 l1 l2 f)
    (for-all? (lambda(x) (is-member? (f x) l2)) l1))

;условие-2 ∀y∈l₂ ∃x∈l₁ f(x)=y
(define (cond-2 l1 l2 f)
    (for-all? (lambda(y) (for-each (lambda(x) (= (f x) y)) l1)) l2))
