tests
testParseInStrInParseOutStrOut
	self assert: [ :pOut :sOut | parser parseIn: 1 strIn: Cons empty parseOut: pOut strOut: sOut ] asGoal run equals: (1 cons: Cons empty cons) cons.
	self assert: [ :pOut | parser parseIn: #(true 2 1) asCons strIn: 1 cons parseOut: pOut strOut: Cons empty ] asGoal run equals: 2 cons cons.
	self
		assert: [ :pOut | parser parseIn: #(true 3 2) asCons strIn: #(1 #(false 2 1)) asConsTree parseOut: pOut strOut: Cons empty ] asGoal run
		equals: 3 cons cons.	"(1 (2 3))"
	self
		assert: [ :pOut | parser parseIn: #(true 2 1) asCons strIn: #(1 #(false 3 2)) asConsTree parseOut: pOut strOut: Cons empty ] asGoal run
		equals: 3 cons cons.	"((1 2) 3)"
			self
		assert: [ :pOut | parser parseIn: #(true (true (true 4 3) 2) 1) asConsTree strIn: #(1 2 3) asConsTree parseOut: pOut strOut: Cons empty ] asGoal run
		equals: 4 cons cons.	"(((1 2) 3) 4)"
			self
		assert: [ :pOut | parser parseIn: #(true (true 3 2) 1) asConsTree strIn: #(1 3 (false 2 3)) asConsTree parseOut: pOut strOut: Cons empty ] asGoal run
		equals: 3 cons cons.	"((1 2) (3 4))"
		self
		assert: [ :pOut | parser parseIn: 2 asConsTree strIn: #(3 4 (false (false (false  1 2) 3) 4)) asConsTree parseOut: pOut strOut: Cons empty ] asGoal run
		equals: 1 cons cons.	"(1 (2 (3 4)))"
			self
		assert: [ :pOut | parser parseIn: #(true 3 2) asConsTree strIn: #(1 (false 2 1) (false 4 3)) asConsTree parseOut: pOut strOut: Cons empty ] asGoal run
		equals: 4 cons cons.	"((1 (2 3)) 4)"
			self
		assert: [ :pOut | parser parseIn: #(true 4 3) asConsTree strIn: #((true 2 1) 1 (false 3 2)) asConsTree parseOut: pOut strOut: Cons empty ] asGoal run
		equals: 4 cons cons.	"(1 ((2 3) 4)"
			self
		assert: [ :pOut | parser parseIn: #(true 2 1) asConsTree strIn: #(1 3  (false (false 4 2) 3)) asConsTree parseOut: pOut strOut: Cons empty ] asGoal run
		equals: 4 cons cons.	"((1 2) (3 4))"