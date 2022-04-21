tests
testApply
	self assert: (r eval: #((lambda x (var x)) y) asConsTree) equals: #y.
	self assert: (r eval: #((lambda x (var x)) #(lambda z (var z)))) equals: #(lambda z (var z)) asConsTree.