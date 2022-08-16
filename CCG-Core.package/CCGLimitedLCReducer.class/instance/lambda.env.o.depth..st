interpreter
lambda: anExpr env: anEnv o: aVal depth: depth
	"Reduces the lambda's body but preserves calls to (var x) where x is the lambda's argument since we don't actually have that value until we apply the lambda later and if we reduce it now it will get what should be a shadowed var."
	^ {anExpr. aVal} match: #((lambda _var _body) (lambda _var _beta)) o: [ :var :body :beta |
		"Shadow the lambda's argument before evaluating so that it evaluates to its own (var _) call, to prevent it from calling shadowed vars."
		{body presento: (#var cons: var cons).
		self eval: body env: ((var cons: (#var cons: var cons)) cons: anEnv) o: beta depth: depth} ].