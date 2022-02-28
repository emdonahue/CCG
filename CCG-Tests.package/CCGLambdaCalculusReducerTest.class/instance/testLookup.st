tests
testLookup
	self assert: (r eval: #x env: (#x cons: #y) cons) equals: #y.