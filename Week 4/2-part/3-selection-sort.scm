;maximum
(define (maximum list)
    (maximum-help -1000000 list))

(define (maximum-help max list)
    (if (null? list) max
        (if (> (car list) max)
            (maximum-help (car list) (cdr list))
            (maximum-help max (cdr list)))))

;minimum
(define (minimum list)
    (minimum-help 1000000 list))

(define (minimum-help min list)
    (if (null? list) min
        (if (< (car list) min)
            (minimum-help (car list) (cdr list))
            (minimum-help min (cdr list)))))

;remove
(define (remove list x)
    (if (null? list) '()
        (if (= (car list) x)
            (cdr list)
            (cons (car list) (remove (cdr list) x)))))

;selection-sort
(define (selection-sort list comp)
    (cond ((eq? > comp) (selection-sort-help list maximum))
          ((eq? < comp) (selection-sort-help list minimum))))
 
 ;selection-sort-help
 (define (selection-sort-help list term)
    (if (null? list)
        '()
        (cons (term list)
              (selection-sort-help (remove list (term list)) term))))