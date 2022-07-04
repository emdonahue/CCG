tests
testApplyBackwardso
	self
		assert: [ :o | [ :x | parser apply: #(N 2) asConsR backwards: #(#(N \ N) #(lambda #(x) #(cons 1 x))) asConsR o: o ] ] asGoal run
		equals: #(#N #(#(lambda #(x) #(cons 1 x)) 2)) asConsR cons cons.