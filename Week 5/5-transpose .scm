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
;count-cols
(define (count-cols matrix)
    (length (car matrix)))

;--- --- --- ---

;transpose
(define (transpose matrix)
  (transpose-help matrix 1))

;transpose-help
(define (transpose-help matrix n)
    (if (< (count-cols matrix) n) '()
    (cons (nth-column matrix n)
          (transpose-help matrix (+ 1 n)))))

          