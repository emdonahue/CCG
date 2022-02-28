accessing - delegated
lambda: anExpr env: anEnv o: aVal
	^ (aVal match: #(closure _ | _) o: [ :env :args_body | 
			{ env === anEnv. anExpr === (#lambda cons: args_body) }]) tag: #lambda.