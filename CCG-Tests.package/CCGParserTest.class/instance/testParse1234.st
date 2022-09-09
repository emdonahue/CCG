parsing
testParse1234
	self
		assert:
			[ :pOut | 
			[ :x :y :z | 
			parser
				parseIn: ((((4 cons: #/ cons: (3 cons: x) cons) cons: #/ cons: (2 cons: y) cons) cons: #/ cons: (1 cons: z) cons) cons: (((z cons: y cons) cons: x cons) cons: 4 cons))
				strIn: ((1 cons: 1) cons: (2 cons: 2) cons: (3 cons: 3) cons)
				parseOut: pOut
				strOut: Cons empty ] ] asGoal runList
		equals: #(#(#(4 #(#(1 2) 3) 4))) asConsR.	"(((1 2) 3) 4)"