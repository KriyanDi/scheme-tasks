;помощни функции

;повдигане на степен
(define (pow x n)
    (if (= n 0) 1
        (* x (pow x (- n 1)))))

;колко цифри
(define (find-digits n)
    (if (= n 0) 0
        (+ 1 (find-digits (quotient n 10)))))

;завърта числото наобратно
(define (reverse n)
    (reverse-help n 0 (pow 10 (- (find-digits n) 1))))

(define (reverse-help n rev-n mult)
    (if (= n 0) rev-n
        (reverse-help (quotient n 10) (+ rev-n (* mult (remainder n 10))) (quotient mult 10))))
;--------------------------------------------------

;извежда разликата на число с обратното му число
(define (diff-reverse n)
    (- n (reverse n)))