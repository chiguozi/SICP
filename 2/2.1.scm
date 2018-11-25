(define (make-rat n d)
    (let ((g (gcd n d)))
        (if (> (/ n d) 0)
            (cons (abs (/ n g)) (abs (/ d g)))
            (if (< n 0)
                (cons (/ n g) (/ d g))
                (cons (* (/ n g) -1) (* (/ d g) -1))
            )

        )
    )
)

; -n/-d  => n/d  n/-d => -n/d
(define (make-rat2 n d)
    (let ((g (gcd n d)))
        (if (< d 0) 
            (cons (- (/ n g)) (- (/ d g)))
            (cons (/ n g) (/ d g)))
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

(print-rat (make-rat2 -3 -4))
(print-rat (make-rat2 2 -4))
(print-rat (make-rat2 1 4))