;#lang scheme
(define (sum term a next b)
  (if (> a b)
      0
      (+ (term a)
         (sum term (next a) next b)))
 )

(define (inc a) (+ a 1))
(define (term a) a)