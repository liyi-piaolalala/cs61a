(define-macro (assign sym1 sym2 expr1 expr2)
  `(begin
     (define tmp ,expr2)
     (define ,sym1 ,expr1)
     (define ,sym2 tmp)))

(assign x y (+ 1 1) 3)
(assign x y y x)
(expect x 3)
(expect y 2)
