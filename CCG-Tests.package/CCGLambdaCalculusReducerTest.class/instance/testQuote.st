tests
testQuote
	self assert: (r eval: #(quote x)) equals: #x.