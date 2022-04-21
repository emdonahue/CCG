accessing - delegated
lambda: anExpr env: anEnv o: aVal
	^ anExpr match: #(lambda _ _) o: [  :var :body :beta |
		{self eval: body env: ((var cons: (#var cons: var cons)) cons: anEnv) o: beta.
		aVal === (#lambda cons: var cons: beta cons)}
		 ].
	"^ (aVal match: #(closure _ | _) o: [ :env :args_body | 
			{ env === anEnv. anExpr === (#lambda cons: args_body) }]) tag: #lambda." 