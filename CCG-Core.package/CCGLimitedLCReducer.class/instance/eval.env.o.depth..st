eval
eval: anExpr env: anEnv o: aVal depth: aDepth
	self shouldNotImplement.
	aDepth = 0 ifTrue: [ ^ SKGoal fail ].
	^ {self atom: anExpr o: aVal.
		self predicate: anExpr env: anEnv o: aVal depth: aDepth.
		self lambda: anExpr env: anEnv o: aVal depth: aDepth.
		self var: anExpr env: anEnv o: aVal.
		self apply: anExpr env: anEnv o: aVal depth: aDepth.
		} conde.