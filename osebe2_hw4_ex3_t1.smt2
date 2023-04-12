(declare-sort Type)

(declare-const e Type)
(declare-fun f (Type Type) Type)
(declare-fun g (Type) Type)

(assert (forall ((x Type) (y Type) (z Type)) (= (f (f x y) z) (f x (f y z)))))
(assert (forall ((x Type)) (and (= (f x e) x) (= (f e x) x))))
(assert (forall ((x Type)) (and (= (f x (g x)) e) (= (f (g x) x) e))))

(declare-const c Type)

(assert (and (= (f e c) e) (= (f c e) e) (not (= e c))))

(check-sat)
