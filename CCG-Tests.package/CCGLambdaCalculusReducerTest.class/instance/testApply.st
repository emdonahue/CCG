tests
testApply
	self assert: (r eval: #((lambda x (var x)) y) asConsR) equals: #y.
	self assert: (r eval: #((lambda x (var x)) #(lambda z (var z)))) equals: #(lambda z (var z)) asConsR.
	self assert: (r eval: #((lambda x ((var x) (var x))) #(lambda z (var z)))) equals: #(lambda z (var z)) asConsR.
	self assert: (r eval: #((lambda f (lambda x ((var f) (var x)))) #(lambda z (var z)))) equals: #(lambda x (var x)) asConsR.