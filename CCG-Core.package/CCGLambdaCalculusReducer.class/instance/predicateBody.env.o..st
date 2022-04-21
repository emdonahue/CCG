accessing - delegated
predicateBody: anExpr env: anEnv o: aVal
	^ { anExpr isEmptyo & aVal isEmptyo.
		(aVal carCdro: [ :va :vd | 
			(anExpr carCdro: [ :ea :ed | 
				"PredicateBody" 
				{ self eval: ea env: anEnv o: va.
					self predicateBody: ed env: anEnv o: vd }]) tag: #pbody_expr]) tag: #pbody_val} conde.