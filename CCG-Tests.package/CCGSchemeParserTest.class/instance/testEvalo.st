tests
testEvalo
	self
		assert:
			[ :x | 
			parser
				eval:
					({#(S / N).
					#(lambda #(x) #(list x x)).} asConsTree
						cons:
							{#N.
							#(quote 42).} asConsTree cons)
				o: x ] asGoal run
		equals: (42 cons: 42 cons) cons cons.