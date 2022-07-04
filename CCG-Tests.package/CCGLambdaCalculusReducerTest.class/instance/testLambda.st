tests
testLambda
	self assert: (r eval: #(lambda x x)) equals: #(lambda x x) asConsR.
	self assert: (r eval: #(lambda x (var y)) env: #((y . z))) equals: #(lambda x z) asConsR.
	self assert: (r eval: #(lambda x (var x)) env: #((x . z))) equals: #(lambda x (var x)) asConsR.