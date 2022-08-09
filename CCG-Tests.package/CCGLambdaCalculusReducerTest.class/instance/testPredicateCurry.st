tests
testPredicateCurry
	self assert: (r eval: #((is mortal) socrates)) equals: #(is mortal socrates) asConsR.