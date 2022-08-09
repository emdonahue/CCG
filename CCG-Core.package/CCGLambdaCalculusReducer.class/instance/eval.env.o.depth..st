accessing - delegated
eval: anExpr env: anEnv o: aVal depth: depth
	depth = 0 ifTrue: [ ^ SKGoal fail ].
	^ {self atom: anExpr o: aVal.
		"self predicate: anExpr env: anEnv o: aVal depth: depth - 1."
		self lambda: anExpr env: anEnv o: aVal depth: depth - 1.
		self var: anExpr env: anEnv o: aVal.
		self apply: anExpr env: anEnv o: aVal depth: depth - 1.
		} conde.