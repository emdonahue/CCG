interpreter
var: anExpr env: anEnv o: aVal 	
	^ anExpr match: #(var _) o: [ :var |
		{var isSymbolo.
		self walk: var env: anEnv o: aVal} ].