eval
lambdaApply: anExpr env: anEnv o: aVal depth: depth
	^ anExpr match: #(_ _) o: [ :rator :rand :body :arg :val |
			{ self var: rator env: anEnv o: (#lambda cons: arg cons: body cons).
				self var: arg env: anEnv o: val.
				self lambdaEval: body env: ((arg cons: val) cons: anEnv) o: aVal depth: depth}].