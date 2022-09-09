parsing
testParse123
	self
		assert:
			[ :pOut | 
			[ :x :y | 
			parser
				parseIn: ((2 cons: #/ cons: (1 cons: x) cons) cons: (x cons: 2 cons))
				strIn: ((1 cons: 1) cons: ((3 cons: #\ cons: (2 cons: y) cons) cons: (y cons: 3 cons)) cons)
				parseOut: pOut
				strOut: Cons empty ] ] asGoal runList
		equals: #(#(#(3 #(1 2) 3))) asConsR.	"((1 2) 3)"