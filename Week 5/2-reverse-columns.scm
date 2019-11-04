(define (reverse-columns matrix)
    (if (null? matrix) '()
        (cons (reverse (car matrix))
              (reverse-columns (cdr matrix)))))