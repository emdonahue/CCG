tests
testApplyForwards
	self assert: 
		[ :o | parser apply: #((S / N) is_cat) asConsR forwards: #(N catullus) asConsR o: o ] asGoal run first first 
		equals: #(S (is_cat catullus)) asConsR.