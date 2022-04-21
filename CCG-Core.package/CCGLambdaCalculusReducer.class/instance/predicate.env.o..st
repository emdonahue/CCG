accessing - delegated
predicate: anExpr env: anEnv o: aVal
	^ anExpr match: #(_ . _) o: [ :pred :terms |
		{pred isSymbolo. pred =/= #lambda. pred =/= #var. self predicateBody: (pred cons: terms) env: anEnv o: aVal}
		 ].