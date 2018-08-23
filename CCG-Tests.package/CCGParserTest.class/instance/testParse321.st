parsing
testParse321
	self
		assert:
			[ :pOut | 
			[ :x :y | 
			parser
				parseIn: ((1 cons: #/ cons: (3 cons: x) cons) cons: (1 cons: x cons))
				strIn: ((2 cons: 2) cons: ((3 cons: #\ cons: (2 cons: y) cons) cons: (y cons: 3 cons)) cons)
				parseOut: pOut
				strOut: Cons empty ] ] asGoal run
		equals: #(#(#(1 1 #(2 3)))) asConsTree.	"(1 (2 3))"