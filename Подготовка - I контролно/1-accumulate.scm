;Прилага бинарна операция върху числа в интервал от А до Б при терм и стъпка

;Дясно натрупване - term(a) @ (term(next(a)) @ (... @ (term(b) @ nv)...)) 
(define (accumulate op nv a b term next)
    (if (> a b) nv
        (op (term a)
            (accumulate op nv (next a) b term next))))

;Ляво натрупване - (...((nv @term(a)) @ term(next(a)) @ ...) @ term(b)
(define (accumulate-i op nv a b term next)
    (if (> a b) nv
        (accumulate op (op nv (term a)) (next a) b term next)))