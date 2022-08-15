eval
eval: anExpr env: anEnv o: aVal
	^ self eval: anExpr env: anEnv o: aVal depth: maxDepth.