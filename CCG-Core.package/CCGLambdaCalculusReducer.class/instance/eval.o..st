accessing - delegated
eval: anExpr o: aVal
	^ self eval: (Cons read: anExpr) env: Cons empty o: aVal.