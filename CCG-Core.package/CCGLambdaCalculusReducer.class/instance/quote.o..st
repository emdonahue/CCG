interpreter
quote: anExpr o: aValue
	^ {aValue absento: #closure. anExpr === (#quote cons: aValue cons)} asGoal.