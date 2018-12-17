tests
testApplyForwardso
	self
		assert: [ :o | [ :x | parser apply: #(#(N / N) #(lambda0 #(x) #(cons 1 x))) asConsTree forwards: #(N 2) asConsTree o: o ] ] asGoal run
		equals: #(#N #(#(lambda0 #(x) #(cons 1 x)) 2)) asConsTree cons cons.