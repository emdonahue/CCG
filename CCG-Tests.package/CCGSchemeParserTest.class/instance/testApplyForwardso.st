tests
testApplyForwardso
	self
		assert: [ :o | [ :x | parser apply: #(#(N / N) #(lambda0 #(x) #(cons 1 x))) asConsR forwards: #(N 2) asConsR o: o ] ] asGoal run
		equals: #(#N #(#(lambda0 #(x) #(cons 1 x)) 2)) asConsR cons cons.