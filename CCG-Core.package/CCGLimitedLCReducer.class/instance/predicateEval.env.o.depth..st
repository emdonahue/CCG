eval
predicateEval: anExpr env: anEnv o: aVal depth: aDepth
	^ {{anExpr =/= #lambda. anExpr =/= #var}.
		{self atom: anExpr o: aVal.
		self var: anExpr env: anEnv o: aVal.
		self predicate: anExpr env: anEnv o: aVal depth: aDepth - 1} conde}.