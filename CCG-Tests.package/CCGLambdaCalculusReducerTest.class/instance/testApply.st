tests
testApply
	self assert: (r eval: #((lambda x x) (quote y)) asConsTree) equals: #y.