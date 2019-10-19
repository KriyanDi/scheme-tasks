;; (define (accumulate combine null-value term list)
;;     (if (null? list)
;;         null-value
;;         (combine (term list)
;;                  (accumulate combine
;;                              null-value
;;                              term
;;                              (cdr list)))))

;; (define (fold null-value combine term list)
;;     (accumulate combine null-value term list))

;; (define (lenght list)
;;     (fold 0 
;;           + 
;;           (lambda (list) 1)
;;           list))

(define (length list)
    (if (null? list)
        0
        (+ 1 (length (cdr list)))))

(define (last list)
    (if (<= (lenght list) 1)
        list
        (last (cdr list))))