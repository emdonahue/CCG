accessing - delegated
predicateBody: anExpr env: anEnv o: aVal depth: depth
	^ { anExpr isEmptyo & aVal isEmptyo.
		(aVal carCdro: [ :va :vd | 
			(anExpr carCdro: [ :ea :ed | 
				"PredicateBody" 
				{ self eval: ea env: anEnv o: va depth: depth.
					self predicateBody: ed env: anEnv o: vd depth: depth }]) tag: #pbody_expr]) tag: #pbody_val} conde.