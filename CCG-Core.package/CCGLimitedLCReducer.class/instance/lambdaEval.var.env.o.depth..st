eval
lambdaEval: anExpr var: aVar env: anEnv o: aVal depth: aDepth
	"Reduce the body of a lambda using the special var-only apply."
	^ {self atom: anExpr o: aVal.
		self var: anExpr env: anEnv o: aVal.
		self lambda: anExpr env: anEnv o: aVal depth: aDepth - 1.
		self predicate: anExpr env: anEnv o: aVal depth: aDepth - 1.
		self lambdaApply: anExpr env: anEnv o: aVal depth: aDepth - 1} conde.