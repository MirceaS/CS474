(define-fun E ((r Real) (s Real) (p11 Real) (p01 Real) (p10 Real) (p00 Real)) Real
  (+ (* r s p11) (* (- 1 r) s p01) (* r (- 1 s) p10) (* (- 1 r) (- 1 s) p00)))

(assert ( not (
  forall ((p11r Real) (p01r Real) (p10r Real) (p00r Real) (p11s Real) (p01s Real) (p10s Real) (p00s Real)) (
    exists ((r1 Real) (s1 Real)) (
        and (forall ((s2 Real)) (=> (<= 0 s2 1) (<= (E r1 s2 p11s p01s p10s p00s)
                                                    (E r1 s1 p11s p01s p10s p00s))))
            (forall ((r2 Real)) (=> (<= 0 r2 1) (<= (E r2 s1 p11r p01r p10r p00r)
                                                    (E r1 s1 p11r p01r p10r p00r))))
)))))

(check-sat)
