tests
testApplyForwards
	self assert: 
		[ :o | parser apply: #((S / N) is_cat) asConsR forwards: #(N catullus) asConsR o: o ] asGoal runList first first 
		equals: #(S (is_cat catullus)) asConsR.
		
	self assert: 
		[ :o | parser parse: #(((S / N) is_cat) (N catullus)) asConsR top: #S o: o ] asGoal runList first first 
		equals: #(is_cat catullus) asConsR.