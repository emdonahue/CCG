tests
testComposeForwardso
	| y |
	y := SKVar new.
	self
		assert:
			[ :o | 
			[ :x  | 
			parser
				compose: ((#X cons: #/ cons: (#Y cons: x) cons) cons: (#lambda1 cons: x cons))
				forwards: ((#Y cons: #/ cons: (#Z cons: y) cons) cons: (#lambda2 cons: y cons))
				o: o ] ] asGoal run
		equals:
			((#X cons: #/ cons: (#Z cons: y) cons)
				cons: (#lambda1 cons: (#lambda2 cons: y cons) cons)) cons cons