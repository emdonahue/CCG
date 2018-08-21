tests
testComposeForwardso
	| yVar |
	self
		assert:
			[ :o | 
			[ :x :y | 
			yVar := y.
			parser
				compose: ((#X cons: #/ cons: (#Y cons: x) cons) cons: (#lambda1 cons: x cons))
				forwards: ((#Y cons: #/ cons: (#Z cons: y) cons) cons: (#lambda2 cons: y cons))
				o: o ] ] asGoal run
		equals: ((#X cons: #/ cons: (#Z cons: yVar) cons) cons: (#lambda1 cons: (#lambda2 cons: yVar cons) cons))  cons cons.