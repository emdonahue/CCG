tests
testPredicate
	self assert: (r eval: #(is_mortal socrates)) equals: #(is_mortal socrates) asConsTree.
	self assert: (r eval: #(is_mortal (var socrates)) env: #((socrates . athens))) equals: #(is_mortal athens) asConsTree.