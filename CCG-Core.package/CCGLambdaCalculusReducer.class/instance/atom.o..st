interpreter
atom: anExpr o: aValue
	"Symbols quote themselves."
	^ {anExpr isSymbolo. anExpr === aValue} asGoal.