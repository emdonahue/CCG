accessing - delegated
apply: anExpr env: anEnv o: aVal depth: depth
		^ anExpr match: #(_ . _) o: [ :rator :rands :op |
			{ self eval: rator env: anEnv o: op depth: depth.
				"Lambda"
				{{op. rands} match: #((lambda _ _) (_)) o: [ :param :body :arg :val |
					{ self eval: arg env: anEnv o: val depth: depth.
					self eval: body env: ((param cons: val) cons: anEnv) o: aVal depth: depth}].
				"Var"
				op match: #(var _) o: [ :v | aVal === anExpr ].
				"Simple Predicate"
				{op isSymbolo. op =/= #var. op =/= #lambda. 
					[ :body | {self predicateBody: rands env: anEnv o: body depth: depth. aVal === (op cons: body)} ]}
				} conde}].
	
