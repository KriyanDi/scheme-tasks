;помощни функции

;брояч на цифри
(define (digits-counter n)
    (if (= n 0) 0
        (+ 1 (digits-counter (quotient n 10)))))

;цикъл for модифициран за задачата
(define (for a b n)
  (if (= a b) (remainder n 10)
      (for (+ 1 a) b (quotient n 10))))
;---------------------------------------------------------------

;намира средната цифра на числото
(define (middle-digit n)
    (if (= (remainder (digits-counter n) 2) 0) -1
        (middle-digit-help n (digits-counter n))))

(define (middle-digit-help n len)
    (for 0 (/ (- len 1) 2) n))