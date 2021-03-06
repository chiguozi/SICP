(define (expt b n)
    (define (even? value)
        (= (remainder value 2) 0)
    )
    (define (square x) (* x x))
    (define (expt-iter value result counter)
        (cond ((= counter 0) result)
            ((even? counter) (expt-iter (square value) result (/ counter 2)))
            (else (expt-iter value (* value result) (- counter 1)))
        ))
    (expt-iter b 1 n)
)