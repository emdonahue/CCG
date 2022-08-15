interpreter
predicate: anExpr env: anEnv o: aVal depth: depth	
	"Predicates only contain atoms, vars, and other predicates."
	^ {anExpr isNotEmptyo. 
		self predicateBody: anExpr env: anEnv o: aVal depth: depth}.