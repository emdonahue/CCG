tests
testApplyBackwardso
	self
		assert: [ :o | [ :x | parser apply: (#N cons: #arg)   backwards: ((#N cons: #\ cons: (#N cons: x) cons) cons: (#lambda cons: x cons)) o: o ] ] asGoal run
		equals: #(#N lambda arg) asCons cons cons.