tests
testApplyBackwards
	self assert: 
		[ :o | parser apply: #(N catullus) asConsR backwards: #((S \ N) is_cat) asConsR o: o ] asGoal run first first 
		equals: #(S (is_cat catullus)) asConsR.