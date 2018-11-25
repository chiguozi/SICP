;有理数 n 分子  d分母 
(define (make-rat n d)
    (let ((g (gcd n d)))
        (cons (/ n g) (/ d g))
    )
)

(define (numer x) (car x))
(define (denom x) (cdr x))

(define (print-rat x)
    (newline)
    (display (numer x))
    (display "/")
    (display (denom x))
)

; n1/d1 + n2/d2 = (n1*d2 + n2*n1)/(d1*d2)
(define (+rat x y)
    (make-rat (+ (* (numer x) (denom y))
                 (* (numer y) (denom x)))
              (* (denom x) (denom y))
    ) 
)



(let ((x (make-rat 3 4))
     (y (make-rat 1 2)))
     (print-rat (+rat x y))
)