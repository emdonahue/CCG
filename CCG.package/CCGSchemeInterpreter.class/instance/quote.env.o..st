as yet unclassified
quote: anExpr env: anEnv o: aVal
	^ anExpr car: #quote cdrIn: [ :quoted | "Quote" quoted === aVal cons & (aVal absento: #closure) & (self not: #quote inEnvo: anEnv) ].