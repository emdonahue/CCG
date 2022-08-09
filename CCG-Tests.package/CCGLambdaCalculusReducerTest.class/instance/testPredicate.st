tests
testPredicate
	self assert: (r eval: #(is_mortal socrates)) equals: #(is_mortal socrates) asConsR.
	self assert: (r eval: #(is_mortal (var socrates)) env: #((socrates . athens))) equals: #(is_mortal athens) asConsR.
	self assert: (r eval: #((var is_mortal) socrates) env: #((is_mortal . athens))) equals: #(athens socrates) asConsR.