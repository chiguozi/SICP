; 阶乘计算
;o(n)  m(n)
(define (expt b n)
    (if(= 0 n)
        1
        (* b (expt b (- n 1)))
    )
)
;o(n)  m(1)
(define (expt2 b n)
    (define (expt-iter result counter)
        (if (= counter 0)
            result
            (expt-iter (* b result) (- counter 1))
        )
    )

    (expt-iter 1 n)
)

; b(n) =>  b(n/2)2  n为偶数
;           b * b (n - 1)  n为奇数
;o(log(n))  m(log(n))
(define (expt3 b n)
    (define (even? value)
        (= (remainder value 2) 0)
    )
    (define (square x) (* x x))
    (cond ((= n 0) 1)
          ((even? n) (square (expt3 b (/ n 2))))
          (else (* b (expt3 b (- n 1))))
    )
)