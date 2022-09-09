parsing
testParse1
	self
		assert: [ :pOut :sOut | parser parseIn: (1 cons: 1) strIn: Cons empty parseOut: pOut strOut: sOut ] asGoal runList
		equals: ((1 cons: 1) cons: Cons empty cons) cons.	"1"