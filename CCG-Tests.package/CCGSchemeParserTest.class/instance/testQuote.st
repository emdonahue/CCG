tests
testQuote
	self assert: ([ :x | parser eval: x cons o: 42 ] asGoal runList includes: #(#(S #(quote 42))) asConsR).