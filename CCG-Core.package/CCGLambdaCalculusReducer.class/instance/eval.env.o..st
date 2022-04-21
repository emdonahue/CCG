accessing - delegated
eval: anExpr env: anEnv o: aVal
	^ {self atom: anExpr o: aVal.
		self predicate: anExpr env: anEnv o: aVal.
		self lambda: anExpr env: anEnv o: aVal.
		self var: anExpr env: anEnv o: aVal.
		self apply: anExpr env: anEnv o: aVal.
		} conde.