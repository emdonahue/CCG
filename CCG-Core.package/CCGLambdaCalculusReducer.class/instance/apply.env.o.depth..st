accessing - delegated
apply: anExpr env: anEnv o: aVal depth: depth
		^ anExpr match: #(_ _) o: [ :rator :rand :lambda |
			{ self eval: rator env: anEnv o: lambda depth: depth.
			{lambda match: #(lambda _ _) o: [ :arg :body :val |
				{ self eval: rand env: anEnv o: val depth: depth.
				self eval: body env: ((arg cons: val) cons: anEnv) o: aVal depth: depth}
				 ].
			lambda match: #(var _) o: [ :v | aVal === anExpr ]} conde}].
	
