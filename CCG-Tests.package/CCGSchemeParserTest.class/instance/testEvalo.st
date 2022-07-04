tests
testEvalo
self skip.
	self
		assert:
			[ :x | 
			parser
				eval:
					({#(S / N).
					#(lambda #(x) #(list x x))} asConsR
						cons:
							{#N.
							#(quote 42)} asConsR cons)
				o: x ] asGoal run
		equals: (42 cons: 42 cons) cons cons