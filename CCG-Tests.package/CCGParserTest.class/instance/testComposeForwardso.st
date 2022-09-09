tests
testComposeForwardso
	"Creates a new lambda term that passes an argument to the inner composed function and its result to the outer. Composes 2 functions."
	| y |
	y := SKVar new.
	self
		assert:
			[ :o |
				[ :x | 
				parser
					compose: ((#X cons: #/ cons: (#Y cons: x) cons) cons: (#lambda1 cons: x cons))
					forwards: ((#Y cons: #/ cons: (#Z cons: y) cons) cons: (#lambda2 cons: y cons))
					o: o ] ] asGoal runList
		equals:
			((#X cons: #/ cons: (#Z cons: y) cons)
				cons: (#lambda1 cons: (#lambda2 cons: y cons) cons)) cons cons