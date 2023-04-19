(declare-sort Type)

(declare-const e Type)
(declare-fun f (Type Type) Type)
(declare-fun g (Type) Type)
(declare-const c Type)

(assert (and
  (= (f (f e e) e) (f e (f e e)))
  (= (f c e) c)
  (= (f e c) c)
  (= (f e (g e)) e)
  (= (f (g e) e) e)
  (= (f e c) e)
  (= (f c e) e)
  (not (= e c))
  ))

(check-sat)
