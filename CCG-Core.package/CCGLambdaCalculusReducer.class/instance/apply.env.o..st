accessing - delegated
apply: anExpr env: anEnv o: aVal
		^ anExpr match: #(_ _) o: [ :rator :rand :lambda |
			{ self eval: rator env: anEnv o: lambda.
			{lambda match: #(lambda _ _) o: [ :arg :body :val |
				{ self eval: rand env: anEnv o: val.
				self eval: body env: ((arg cons: val) cons: anEnv) o: aVal}].
			lambda match: #(var _) o: [ :v | aVal === anExpr ]} conde}].
