(define (make-point x y)
    (cons x y))

(define (point-x point)
    (car point)
)

(define (point-y point)
    (cdr point)
)

(define (mid-point p1 p2)
    (make-point (/ (+ (point-x p1) (point-x p2)) 2)
                (/ (+ (point-y p1) (point-y p2)) 2)
    )
)
(define (make-segment p1 p2)
    (cons p1 p2)
)

(define (start-seg seg)
    (car seg)
)

(define (end-seg seg)
    (cdr seg)
)

(define (midpoint-segment seg)
    (mid-point (start-seg seg) (end-seg seg))
)

(let ((x (make-point 1 3))
      (y (make-point 2 4)))
      (midpoint-segment (make-segment x y))
)
