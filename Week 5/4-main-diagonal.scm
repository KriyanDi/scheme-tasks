;nth element in list stats from 0
(define (nth n list)
    (nth-help 0 n list))

;nth-help

(define (nth-help current n list)
    (if (= current n)
        (car list)
        (nth-help (+ current 1) 
                  n 
                  (cdr list))))

;main-diagonal
(define (main-diagonal matrix)
    (main-diagonal-help matrix 0))

;main-diagonal-help
(define (main-diagonal-help matrix n)
    (if (null? matrix) '()
        (cons (nth n (car matrix))
              (main-diagonal-help (cdr matrix) (+ 1 n)))))