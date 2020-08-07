as yet unclassified
eval: anExpr env: anEnv o: aVal
	^ (self quote: anExpr env: anEnv o: aVal) | (self apply0: anExpr env: anEnv o: aVal).