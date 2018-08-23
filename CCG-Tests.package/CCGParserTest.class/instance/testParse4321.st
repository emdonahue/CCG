parsing
testParse4321
	self
		assert:
			[ :pOut | 
			[ :x :y :z | 
			parser
				parseIn: (1 cons: 1)
				strIn:
					((2 cons: 2)
						cons: (3 cons: 3)
						cons:
							((((4 cons: #\ cons: (1 cons: x) cons) cons: #\ cons: (2 cons: y) cons) cons: #\ cons: (3 cons: z) cons) cons: (x cons: (y cons: (z cons: 4 cons) cons) cons))
								cons)
				parseOut: pOut
				strOut: Cons empty ] ] asGoal run
		equals: #(#(#(4 1 #(2 #(3 4))))) asConsTree.	"(1 (2 (3 4)))"