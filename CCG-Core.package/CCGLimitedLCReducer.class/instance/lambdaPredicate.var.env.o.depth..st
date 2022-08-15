interpreter
lambdaPredicate: anExpr var: aVar env: anEnv o: aVal depth: depth	
	"Predicates only contain atoms, vars, and other predicates."
	^ {anExpr isNotEmptyo. 
		self lambdaPredicateBody: anExpr var: aVar env: anEnv o: aVal depth: depth}.