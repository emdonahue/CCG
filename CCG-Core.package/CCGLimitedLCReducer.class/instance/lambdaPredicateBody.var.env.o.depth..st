interpreter
lambdaPredicateBody: anExpr var: aVar env: anEnv o: aVal depth: depth	
	"Predicates only contain atoms, vars, and other predicates. aVar must appear"
	"No empty condition, so we fail unless we discharge somewhere."
	^ aVal carCdro: [ :va :vd | 
			anExpr carCdro: [ :ea :ed | 
				"LambdaPredicateBody" 
				{{self lambdaPredicateEval: ea var: aVar env: anEnv o: va depth: depth. "or continue carrying it."
					self predicateBody: ed env: anEnv o: vd depth: depth }.
				{self predicateEval: ea env: anEnv o: va depth: depth. "or continue carrying it."
					self lambdaPredicateBody: ed var: aVar env: anEnv o: vd depth: depth }} conde]].