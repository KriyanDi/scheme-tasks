(define (sum start end)
    (if (< start end)
        (+ start (sum (+ start 1) end))
        start))