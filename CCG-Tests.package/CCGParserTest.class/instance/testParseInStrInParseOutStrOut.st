tests
testParseInStrInParseOutStrOut
	self
		assert: [ :pOut :sOut | parser parseIn: (1 cons: 1) strIn: Cons empty parseOut: pOut strOut: sOut ] asGoal run
		equals: ((1 cons: 1) cons: Cons empty cons) cons.	"1"
	self
		assert:
			[ :pOut | [ :x | parser parseIn: ((2 cons: #/ cons: (1 cons: x) cons) cons: (2 cons: x cons)) strIn: (1 cons: 1) cons parseOut: pOut strOut: Cons empty ] ]
				asGoal run
		equals: #(2 2 1) asCons cons cons.	"(2 1)"
	self
		assert:
			[ :pOut | [ :x | parser parseIn: (1 cons: 1) strIn: ((2 cons: #\ cons: (1 cons: x) cons) cons: (2 cons: x cons)) cons parseOut: pOut strOut: Cons empty ] ]
				asGoal run
		equals: #(2 2 1) asCons cons cons.	"(2 1)"
	self
		assert:
			[ :pOut | 
			[ :x :y | 
			parser
				parseIn: ((2 cons: #/ cons: (1 cons: x) cons) cons: (x cons: 2 cons))
				strIn: ((1 cons: 1) cons: ((3 cons: #\ cons: (2 cons: y) cons) cons: (y cons: 3 cons)) cons)
				parseOut: pOut
				strOut: Cons empty ] ] asGoal run
		equals: #(#(#(3 #(1 2) 3))) asConsTree.	"((1 2) 3)"
			self
		assert:
			[ :pOut | 
			[ :x :y | 
			parser
				parseIn: ((1 cons: #/ cons: (3 cons: x) cons) cons: (1 cons: x cons))
				strIn: ((2 cons: 2) cons: ((3 cons: #\ cons: (2 cons: y) cons) cons: (y cons: 3 cons)) cons)
				parseOut: pOut
				strOut: Cons empty ] ] asGoal run
		equals: #(#(#(1 1 (2 3)))) asConsTree.	"(1 (2 3))"
	"self
		assert:
			[ :pOut | 
			[ :x :y | 
			parser
				parseIn: ((3 cons: #/ cons: (2 cons: x) cons) cons: (3 cons: x))
				strIn: ((1 cons: 1) cons: ((2 cons: #\ cons: (1 cons: y) cons) cons: (2 cons: y)))
				parseOut: pOut
				strOut: Cons empty ] ] asGoal run
		equals: 3 cons cons.	""(1 (2 3))"