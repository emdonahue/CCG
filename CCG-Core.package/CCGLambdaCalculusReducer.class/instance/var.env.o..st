accessing - delegated
var: anExpr env: anEnv o: aVal 	
	^ anExpr match: #(var _) o: [ :var |
		{var isSymbolo.
		self walk: var env: anEnv o: aVal} ].
		"self walk: anExpr env: anEnv o: aVal } asGoal."