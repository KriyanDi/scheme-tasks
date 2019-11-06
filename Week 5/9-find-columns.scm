(define (find-columns matrix)
    (find-columns-help matrix 1))

(define (find-columns-help matrix cur-col)
    (if (> cur-col (col-count matrix)) 0
        (if (col-elms-in-rows? (nth-column matrix cur-col) matrix) 
            (+ 1 (find-columns-help matrix (+ 1 cur-col)))
            (+ 0 (find-columns-help matrix (+ 1 cur-col))))))

(define (col-elms-in-rows? col matrix)
    (if (null? matrix) #f 
        (if (elms-same? col (car matrix))
            (or #t (col-elms-in-rows? col (cdr matrix)))
            (or #f (col-elms-in-rows? col (cdr matrix))))))

(define (elms-same? l1 l2)
    (if (null? l1) #t
        (if (member- (car l1) l2)
            (and #t (elms-same? (cdr l1) (remove l2 (car l1))))
            #f)))

(define (remove list x)
    (if (null? list)
        '()
        (if (= (car list) x)
            (cdr list)
            (cons (car list)
                  (remove (cdr list) x)))))

;column count
(define (col-count matrix)
    (length (car matrix)))

;exist
(define (exists?- p? list)
  (if (null? list)
      #f
      (if (p? (car list))
          #t
          (or (p? (car list))
              (exists?- p? (cdr list))))))

;member
(define (member- element list)
    (exists?- (lambda (x) (= x element)) list))

;nth column
(define (nth-column matrix n)
    (if (null? matrix) '()
        (cons (nth (- n 1) (car matrix))
              (nth-column (cdr matrix) n))))

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
