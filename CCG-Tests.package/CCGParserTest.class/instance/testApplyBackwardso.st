tests
"Apply a type+semantics to a type+semantics in reverse order and get the reduced type and the semantics nested in function application parens."
testApplyBackwardso
	self
		assert: [ :o | [ :x | parser apply: (#N cons: #arg) backwards: ((#N cons: #\ cons: (#N cons: x) cons) cons: (#lambda cons: x cons)) o: o ] ] asGoal runList
		equals: #(#N lambda arg) asCons cons cons.