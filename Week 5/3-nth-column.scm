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

;nth column
(define (nth-column matrix n)
    (if (null? matrix) '()
        (cons (nth (- n 1) (car matrix))
              (nth-column (cdr matrix) n))))