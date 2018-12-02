(load "2.2.scm")

(define (make-rect p w h)
    (cons p (cons w h))
)

(define (rect-width r) 
    (car (cdr r))
)

(define (rect-height r)
    (cdr (cdr r))
)


(define (perimeter-rectangle r)
    (let ((width (rect-width r))
          (height (rect-height r)))
          (* 2 (+ width height))
    )
)

(define (area-rectangle r)
    (let ((width (rect-width r))
          (height (rect-height r)))
          (* width height)
    )
)

(perimeter-rectangle (make-rect 0 3 4))