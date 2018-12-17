tests
testQuote
	self assert: ([ :x | parser eval: x cons o: 42 ] asGoal run includes: #(#(S #(quote 42))) asConsTree).