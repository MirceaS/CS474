(declare-sort Type)

(declare-const e Type)
(declare-fun f (Type Type) Type)
(declare-fun g (Type) Type)
(declare-const x Type)
(declare-const y Type)

(assert (and
  (= (f (f y x) (g x)) (f y (f x (g x))))
  (= (f y e) y)
  (= (f e y) y)
  (= (f x (g x)) e)
  (= (f (g x) x) e)
  (= (f x y) e)
  (= (f y x) e)
  (not (= y (g x)))
  ))

(assert (and
  (= (f (f (g x) (g x)) (g x)) (f (g x) (f (g x) (g x))))
  (= (f (g x) e) (g x))
  (= (f e (g x)) (g x))
  (= (f (g x) (g (g x))) e)
  (= (f (g (g x)) (g x)) e)
  (= (f x y) e)
  (= (f y x) e)
  (not (= y (g x)))
  ))

(check-sat)
