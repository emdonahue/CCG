eval
lambdaEval: anExpr env: anEnv o: aVal depth: aDepth
	aDepth = 0 ifTrue: [ ^ SKGoal fail ].
	^ {self atom: anExpr o: aVal.
		self predicate: anExpr env: anEnv o: aVal depth: aDepth - 1.
		self lambda: anExpr env: anEnv o: aVal depth: aDepth - 1.
		self var: anExpr env: anEnv o: aVal.
		self lambdaApply: anExpr env: anEnv o: aVal depth: aDepth - 1.
		} conde.