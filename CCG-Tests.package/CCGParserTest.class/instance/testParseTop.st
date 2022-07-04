parsing
testParseTop
	self
		assert:
			[ :parse | 
			[ :x :y  | 
			parser
				parse: (((2 cons: #/ cons: (1 cons: x) cons) cons: (x cons: 2 cons)) cons:
				 (1 cons: 1) cons: ((3 cons: #\ cons: (2 cons: y) cons) cons: (y cons: 3 cons)) cons)
				top: 3 o: parse ] ] asGoal run
		equals: #(#(#(#(1 2) 3))) asConsR.	"((1 2) 3)"