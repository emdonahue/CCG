tests
testApply
	self assert: (r eval: #((lambda x (var x)) y) asConsTree) equals: #y.
	self assert: (r eval: #((lambda x (var x)) #(lambda z (var z)))) equals: #(lambda z (var z)) asConsTree.
	self assert: (r eval: #((lambda x ((var x) (var x))) #(lambda z (var z)))) equals: #(lambda z (var z)) asConsTree.
	self assert: (r eval: #((lambda f (lambda x ((var f) (var x)))) #(lambda z (var z)))) equals: #(lambda x (var x)) asConsTree.