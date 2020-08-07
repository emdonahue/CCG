as yet unclassified
lambda0: anExpr env: anEnv o: aVal
	"try switching order of env check with actual lambda arg"

	<todo>
	^ anExpr car: #lambda0 cdrIn: [ :args_body | (self not: #lambda inEnvo: anEnv) & (aVal === (#closure cons: anEnv cons: args_body)) ].