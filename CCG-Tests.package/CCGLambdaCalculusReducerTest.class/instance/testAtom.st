tests
testAtom
	self assert: (r eval: #x asConsTree) equals: #x.