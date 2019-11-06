;count-cols
(define (count-cols matrix)
    (length (car matrix)))

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

;--- --- ---

;for-each-column for matrices with at least one element
(define (for-each-columns matrix p?)
    (for-each-columns-help matrix p? 1))

;for-each-columns-help
(define (for-each-columns-help matrix p? n)
    (if (< (count-cols matrix) n) #t
        (and (for-single-column (nth-column matrix n) p?)
             (for-each-columns-help matrix p? (+ 1 n)))))

;for-single-column
(define (for-single-column list p?)
    (if (null? list) #f
        (or (p? (car list))
             (for-single-column (cdr list)
                                p?))))