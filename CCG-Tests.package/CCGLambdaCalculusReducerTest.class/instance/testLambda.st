tests
testLambda
	self assert: (r eval: #(lambda x x)) equals: #(closure () x x) asConsTree.