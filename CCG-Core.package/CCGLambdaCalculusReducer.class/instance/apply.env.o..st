accessing - delegated
apply: anExpr env: anEnv o: aVal
		^ (anExpr match: #(_ _) o: [ :rator :rands :closure |
			{(closure car: #closure list: 3 o: [ :env :args :body :vals :ext | 
				{self eval: body env: ext o: aVal. 
					self extend: ext env: env args: args vals: vals.
					self eval: rands env: anEnv o: vals. } ]) tag: #apply_closure.
			self eval: rator env: anEnv o: closure. } ]) tag: #apply.
	
