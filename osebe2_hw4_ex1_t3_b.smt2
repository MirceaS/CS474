(declare-const p11r Real)
(declare-const p01r Real)
(declare-const p10r Real)
(declare-const p00r Real)
(declare-const p11s Real)
(declare-const p01s Real)
(declare-const p10s Real)
(declare-const p00s Real)

(declare-const r1 Real)
(declare-const s1 Real)

(define-fun E ((r Real) (s Real) (p11 Real) (p01 Real) (p10 Real) (p00 Real)) Real
  (+ (* r s p11) (* (- 1 r) s p01) (* r (- 1 s) p10) (* (- 1 r) (- 1 s) p00)))

(assert (
        and (forall ((s2 Real)) (=> (<= 0 s2 1) (<= (E r1 s2 p11s p01s p10s p00s)
                                                    (E r1 s1 p11s p01s p10s p00s))))
            (forall ((r2 Real)) (=> (<= 0 r2 1) (<= (E r2 s1 p11r p01r p10r p00r)
                                                    (E r1 s1 p11r p01r p10r p00r))))
))

(apply qe)
