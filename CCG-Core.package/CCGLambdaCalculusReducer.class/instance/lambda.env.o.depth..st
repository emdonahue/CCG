interpreter
lambda: anExpr env: anEnv o: aVal depth: depth
	"Reduces the lambda's body but preserves calls to (var x) where x is the lambda's argument since we don't actually have that value until we apply the lambda later and if we reduce it now it will get what should be a shadowed var."
	^ anExpr match: #(lambda _ _) o: [ :var :body :beta |
		"Shadow the lambda's argument before evaluating so that it evaluates to its own (var _) call, to prevent it from calling shadowed vars."
		{self lambdaEval: body env: ((var cons: (#var cons: var cons)) cons: anEnv) o: beta depth: depth.
		aVal === (#lambda cons: var cons: beta cons)} ].