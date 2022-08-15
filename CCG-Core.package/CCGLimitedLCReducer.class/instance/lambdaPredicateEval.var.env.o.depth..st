eval
lambdaPredicateEval: anExpr var: aVar env: anEnv o: aVal depth: aDepth
	^ {{anExpr =/= #lambda. anExpr =/= #var}.
		{aVal === aVar.
		self lambdaPredicate: anExpr var: aVar env: anEnv o: aVal depth: aDepth} conde}.