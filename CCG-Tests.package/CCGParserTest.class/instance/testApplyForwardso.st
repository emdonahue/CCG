tests
testApplyForwardso
	self
		assert: [ :o | [ :x | parser apply: ((#N cons: #/ cons: (#N cons: x) cons) cons: (#lambda cons: x cons)) forwards: (#N cons: #arg)  o: o ] ] asGoal run
		equals: #(#N lambda arg) asCons cons cons.