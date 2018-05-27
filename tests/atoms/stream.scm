(use-modules (opencog) (opencog query) (opencog exec))

(define k (Predicate "key"))
(define a (Concept "my atom"))
(cog-set-value! a k (FloatValue 1 2 3))

(define vo (ValueOf a k))
(define tym (Times (Plus vo (Number 6)) (Number 2)))

(define b (Concept "other atom"))
(cog-set-value! b k (RandomStream 4))

(define tymb (Number 2) (Times (Plus (ValueOf b k) (Number 6)) ))
