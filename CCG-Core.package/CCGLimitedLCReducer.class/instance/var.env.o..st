interpreter
var: anExpr env: anEnv o: aVal
	"Need to unify var all at once for defective presento"
		^ (anEnv carCdrResto: [ :var :val :env | "Lookup"
		{{ anExpr === (#var cons: var cons). aVal ===  val }.
			{ anExpr =/= (#var cons: var cons). self var: anExpr env: env o: aVal }} conde ]) tag: #walk. 