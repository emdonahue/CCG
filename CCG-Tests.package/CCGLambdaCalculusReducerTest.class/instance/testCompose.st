tests
testCompose
	self assert: (r eval: #(lambda x ((lambda f (f (var f))) ((lambda g (g (var g))) (var x)) ))) equals: #(lambda x (f (g (var x)))) asConsTree.