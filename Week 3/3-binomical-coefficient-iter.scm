(define (fact-iter n) 
    (fact-iter-help 1 1 n))

(define (fact-iter-help product counter max-count)
    (if (> counter max-count)
        product
        (fact-iter-help (* counter product)
                        (+ counter 1)
                        max-count)))

(define (binomical-coefficient-iter row index)
    (/ (fact-iter row)
       (* (fact-iter index)
          (fact-iter (- row index)))))