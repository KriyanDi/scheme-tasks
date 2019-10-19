(define (nth n list)
    (nth-help 0 n list))

(define (nth-help current n list)
    (if (= current n)
        (car list)
        (nth-help (+ current 1) n (cdr list))))