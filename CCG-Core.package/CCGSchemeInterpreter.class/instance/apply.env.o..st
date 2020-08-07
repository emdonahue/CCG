as yet unclassified
apply: anExpr env: anEnv o: aVal
^ anExpr match: #(? ?) o: [ :rator :rand | 
	[ :param :arg :env :body |
		(self eval: rator env: anEnv val: (#closure cons: param cons cons: env cons: body cons)) & (self eval: rand env: anEnv val: arg) & (self eval: body env: ((param cons: arg) cons: env) val: aVal)
	 ]
	 ]