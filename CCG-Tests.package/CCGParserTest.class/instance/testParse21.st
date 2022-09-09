parsing
testParse21
	self
		assert:
			[ :pOut | [ :x | parser parseIn: ((2 cons: #/ cons: (1 cons: x) cons) cons: (2 cons: x cons)) strIn: (1 cons: 1) cons parseOut: pOut strOut: Cons empty ] ]
				asGoal runList
		equals: #(2 2 1) asCons cons cons.	"(2 1)"
			self
		assert:
			[ :pOut | [ :x | parser parseIn: (1 cons: 1) strIn: ((2 cons: #\ cons: (1 cons: x) cons) cons: (2 cons: x cons)) cons parseOut: pOut strOut: Cons empty ] ]
				asGoal runList
		equals: #(2 2 1) asCons cons cons.	"(2 1)"