;(define (average a b)(/
;   (+ a b) 2))
;(define (improve guess x)(
;        average(guess (/ x guess))
;    ))
;(define (abs x)(
;    if(< x 0)
;        (- x)
;        x
;))
;(define (square x)(* x x))
;(define (goodenough guess x)
;    (< (abs (- x (square guess))) 0.0001))
;(define (sqrt guess x)(  
;    (if (goodenough guess x)
;        guess
;        (sqrt(improve (guess x) x)))
;))

(define (sqrt x)
  (define last-guess 0)
  (define (average a b)(/ (+ a b ) 2))
  (define (good-enough? guess)
    (let ((diff (- guess last-guess)))
      (set! last-guess guess)
      (< (abs (/ diff guess))
         0.001)))
  (define (improve guess)
    (average guess (/ x guess)))
  (define (sqrt-iter guess)
    (if (good-enough? guess)
        guess
        (sqrt-iter (improve guess))))
  (sqrt-iter 1.0))


;(define (test x) x)