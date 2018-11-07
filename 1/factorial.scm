(define (factorial num)
    (define (factorial-iter counter product max)(
        if(> counter max)
            product
            (factorial-iter (+ 1 counter) (* product counter) max)
    ))

    (factorial-iter 1 1 num)
)