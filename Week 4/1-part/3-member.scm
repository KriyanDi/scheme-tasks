(define (exists? p? list)
  (if (null? list)
      #f
      (if (p? (car list))
          #t
          (or (p? (car list))
              (exists? p? (crd list))))))