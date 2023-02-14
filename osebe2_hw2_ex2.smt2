(declare-const p Bool)
(declare-const q Bool)
(declare-const r Bool)

(define-fun phi () Bool
	(and (or q (not r)) (or (not p) r) (or (not q) r p) (or p q (not q)) (or (not r) q)))
(define-fun psi () Bool
	(and (or q (not r)) (or (not p) r) (or (not q) r p) (or q (not p)) (or (not q) r)))
(define-fun same () Bool
	(= phi psi))

(check-sat-assuming (phi))

(check-sat-assuming ((not same)))