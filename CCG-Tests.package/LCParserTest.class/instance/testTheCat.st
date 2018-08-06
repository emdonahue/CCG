tests
testTheCat
	self assert: (parser recognize: #NP in: (#the cons: #cat cons) out: Cons empty) succeeds.