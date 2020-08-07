as yet unclassified
apply0: anExpr env: anEnv o: aVal
	^ anExpr
		match: #((lambda0 (?) ?) ?)
		o: [ :param :body :rand | 
			[ :arg |
			 (self eval: rand env: anEnv o: arg)
				& (self eval0: body env: ((param cons: arg) cons: anEnv) o: aVal) ] ].