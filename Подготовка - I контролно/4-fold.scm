;Ползва за свиване на списък

;Дясно натрупване - a1 @ (a2) @ (... @ (an @ nv)...)) 
(define (foldr op nv list)
    (if (null? list) nv
        (op (car list) (foldr op nv (cdr list)))))

;Ляво натрупване - (...((nv @ a1) @ a2) @ ...) @ аn
(define (foldl op nv list)
    (if (null? list) nv
        (foldl op (op nv (car list)) (cdr list))))