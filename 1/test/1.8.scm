(define (cube-root x)
    (define(cube value)(* value value value))
    (define (abs va)(if(< va 0) (- va) va))
    (define(good-enough guess)
    (>  0.001  
        (abs (- (cube guess) x))
    ))
    (define (improve guess)
        (/ (+ (/ x (* guess guess)) (* 2 guess)) 3)
    )
    (define (cube-iter guess)(
        
        ;(let ((new-guess (improve guess)))
        ;(display new-guess)(newline)
        if(good-enough guess)
                guess
                (cube-iter (improve guess))
        )
    )
    (cube-iter 1.0)
)