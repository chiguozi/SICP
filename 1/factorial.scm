#lang scheme
(define (factorial num)
    (define (factorial-iter counter product max)(
        if(> counter max)
            product
            (factorial-iter (+ 1 counter) (* product counter) max)
    ))

    (factorial-iter 1 1 num)
)


(define (fib n)
    (define (fib-iter a b counter)(   ;  a <- a + b   b <- a
        if(= counter 0)
            b
            (fib-iter (+ a b) a (- counter 1))
    ))

    (fib-iter 1 0 n)
)