(define (f n)
    (if (<  n 3) 
        n
        (+ (f (- n 1)) (* 2 (f (- n 2))) (* 3 (f (- n 3))) )
    )
)

(define (f2 n)
        ;  a f(i + 2) b f(i + 1) c (f i)
        (define (f2-iter a b c counter)
            (if (= counter 0)
                c
                (f2-iter (+ a (* 2 b) (* 3 c))
                    a
                    b
                    (- counter 1))
            )
        )
        (f2-iter 2 1 0 n)
)
