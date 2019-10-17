(define (exists? term a b)
  (if (< a b)
      (if (or (term a) #f)
          #t
          (or (term a) (exists? (+ a 1) b term)))
      #f))