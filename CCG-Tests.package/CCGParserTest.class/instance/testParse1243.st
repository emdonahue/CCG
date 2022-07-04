parsing
testParse1243
	self
		assert:
			[ :pOut | 
			[ :x :y :z | 
			parser
				parseIn: (((1 cons: #/ cons: (4 cons: x) cons) cons: #/ cons: (2 cons: y) cons) cons: ((1 cons: y cons) cons: x cons))
				strIn: ((2 cons: 2) cons: (3 cons: 3) cons: ((4 cons: #\ cons: (3 cons: z) cons) cons: (z cons: 4 cons)) cons)
				parseOut: pOut
				strOut: Cons empty ] ] asGoal run
		equals: #(#(#(1 #(1 2) #(3 4)))) asConsR.	"((1 2) (3 4))"