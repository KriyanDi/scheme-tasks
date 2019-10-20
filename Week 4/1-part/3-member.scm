(define (exists?- p? list)
  (if (null? list)
      #f
      (if (p? (car list))
          #t
          (or (p? (car list))
              (exists?- p? (cdr list))))))

(define (member- element list)
    (exists?- (lambda (x) (= x element)) list))