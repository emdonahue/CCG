interpreter
var: anExpr env: anEnv o: aVal
	"Need to unify var all at once for defective presento"
	^ super var: anExpr env: anEnv o: aVal.
		"^ (anEnv carCdrResto: [ :var :val :env | 
		{{ anExpr === (#var cons: var cons). aVal ===  val }.
			{ anExpr =/= (#var cons: var cons). self var: anExpr env: env o: aVal }} conde ]) tag: #walk. "