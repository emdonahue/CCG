tests
testCompose
	self assert: (r eval: #(lambda x ((lambda f (f (var f))) ((lambda g (g (var g))) (var x)) ))) equals: #(lambda x (f (g (var x)))) asConsTree.
	self assert: (r eval: #(good (kitty cat))) equals: #(good (kitty cat)) asConsTree.
	self assert: (r eval: #(lambda x (good (kitty cat)))) equals: #(lambda x (good (kitty cat))) asConsTree.
	self assert: (r eval: #(lambda x (good (kitty (var x))))) equals: #(lambda x (good (kitty (var x)))) asConsTree.