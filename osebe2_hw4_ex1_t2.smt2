(declare-const r1 Real)
(declare-const s1 Real)

(define-fun ER ((r Real) (s Real)) Real
  (+ (* r s 90) (* (- 1 r) s 30) (* r (- 1 s) 20) (* (- 1 r) (- 1 s) 60)))
(define-fun ES ((r Real) (s Real)) Real
  (+ (* r s 10) (* (- 1 r) s 70) (* r (- 1 s) 80) (* (- 1 r) (- 1 s) 40)))

(assert (
        and (forall ((s2 Real)) (=> (<= 0 s2 1) (<= (ES r1 s2) (ES r1 s1))))
            (forall ((r2 Real)) (=> (<= 0 r2 1) (<= (ER r2 s1) (ER r1 s1))))
))

(check-sat)

(get-model)
