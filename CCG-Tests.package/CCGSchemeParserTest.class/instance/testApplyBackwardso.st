tests
testApplyBackwardso
	self
		assert: [ :o | [ :x | parser apply: #(N 2) asConsTree backwards: #(#(N \ N) #(lambda #(x) #(cons 1 x))) asConsTree o: o ] ] asGoal run
		equals: #(#N #(#(lambda #(x) #(cons 1 x)) 2)) asConsTree cons cons.