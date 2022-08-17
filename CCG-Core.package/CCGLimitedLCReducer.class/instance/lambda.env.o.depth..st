interpreter
lambda: anExpr env: anEnv o: aVal depth: depth
	"Reduces the lambda's body but preserves calls to (var x) where x is the lambda's argument since we don't actually have that value until we apply the lambda later and if we reduce it now it will get what should be a shadowed var."
	| varname |
	varname := #x, depth negated asString.
	^ {anExpr. aVal} match: {{#lambda. varname. #_body}. {#lambda. varname. #_beta}} o: [ :body :beta |
		"Shadow the lambda's argument before evaluating so that it evaluates to its own (var _) call, to prevent it from calling shadowed vars."
		{body presento: (#var cons: varname cons).
		self lambdaEval: body env: ((varname cons: (#var cons: varname cons)) cons: anEnv) o: beta depth: depth} ].