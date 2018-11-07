(define (min a b)(
    if(< a  b)
        a
        b))

(define (plusmax a b c)(-
    (+ a b c) 
    (min (min a b) (min b c))
))