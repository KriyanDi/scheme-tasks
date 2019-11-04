;count-rows
(define (count-rows matrix)
   (length matrix))

;count-cols
(define (count-cols matrix)
    (length (car matrix)))

;demensions
(define (dimensions matrix)
    (cons (count-rows matrix) 
          (count-cols matrix)))