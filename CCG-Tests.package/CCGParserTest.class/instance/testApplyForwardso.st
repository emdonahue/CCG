tests
testApplyForwardso
	"Apply a type+semantics to a type+semantics and get the reduced type and the semantics nested in function application parens. The type on the right must be the RHS of the type on the left"
	self assert: [ :o | 
		[ :x | 
			parser apply: ((#N cons: #/ cons: (#N cons: x) cons) 
					cons: (#lambda cons: x cons)) 
				forwards: (#N cons: #arg)  o: o ] ] asGoal run
		equals: #(((#N lambda arg))) asConsTree.