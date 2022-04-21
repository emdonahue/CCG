tests
testLambda
	self assert: (r eval: #(lambda x x)) equals: #(lambda x x) asConsTree.
	self assert: (r eval: #(lambda x (var y)) env: #((y . z))) equals: #(lambda x z) asConsTree.
	self assert: (r eval: #(lambda x (var x)) env: #((x . z))) equals: #(lambda x (var x)) asConsTree.