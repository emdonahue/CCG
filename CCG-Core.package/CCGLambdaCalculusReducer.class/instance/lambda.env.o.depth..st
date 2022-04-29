accessing - delegated
lambda: anExpr env: anEnv o: aVal depth: depth
	^ anExpr match: #(lambda _ _) o: [ :var :body :beta |
		"Shadow the lambda's argument before evaluating so that it evaluates to its own (var _) call, to prevent it from calling shadowed vars."
		{self eval: body env: ((var cons: (#var cons: var cons)) cons: anEnv) o: beta depth: depth.
		aVal === (#lambda cons: var cons: beta cons)} ].