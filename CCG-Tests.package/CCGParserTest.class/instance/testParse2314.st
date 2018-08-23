parsing
testParse2314
	self
		assert:
			[ :pOut | 
			[ :x :y :z | 
			parser
				parseIn: (1 cons: 1)
				strIn:
					(((((4 cons: #/ cons: (3 cons: x) cons) cons: #\ cons: (1 cons: y) cons) cons: #/ cons: (2 cons: z) cons) cons: (y cons: (z cons: x cons) cons) cons: 4 cons)
						cons: (2 cons: 2)
						cons: (3 cons: 3) cons)
				parseOut: pOut
				strOut: Cons empty ] ] asGoal run
		equals: #(#(#(4 #(1 #(2 3)) 4))) asConsTree.	"((1 (2 3)) 4)"