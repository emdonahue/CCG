interpreter
predicate: anExpr env: anEnv o: aVal depth: depth	
	"Predicates only contain atoms, vars, and other predicates."
	^ anExpr carCdro: [ :predh :predt |
		[ :body |
				{{{predh isSymbolo. predh =/= #var. predh =/= #lambda. aVal === (predh cons: body)}.
				[ :head | {self predicate: predh env: anEnv o: head depth: depth. aVal === (head cons: body) }]} conde.
			self predicateBody: predt env: anEnv o: body depth: depth}]].