eval
predicateEval: anExpr env: anEnv o: aVal depth: aDepth
	^ {self atom: anExpr o: aVal.
		self var: anExpr env: anEnv o: aVal.
		self predicate: anExpr env: anEnv o: aVal depth: aDepth
		} conde.