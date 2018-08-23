parsing
testParse2341
	self
		assert:
			[ :pOut | 
			[ :x :y :z | 
			parser
				parseIn: (1 cons: 1)
				strIn:
					(((((4 cons: #\ cons: (1 cons: x) cons) cons: #/ cons: (3 cons: y) cons) cons: #/ cons: (2 cons: z) cons) cons: (x cons: ((z cons: y cons) cons: 4 cons) cons))
						cons: (2 cons: 2)
						cons: (3 cons: 3) cons)
				parseOut: pOut
				strOut: Cons empty ] ] asGoal run
		equals: #(#(#(4 1 #(#(2 3) 4)))) asConsTree.	"(1 ((2 3)  4))"