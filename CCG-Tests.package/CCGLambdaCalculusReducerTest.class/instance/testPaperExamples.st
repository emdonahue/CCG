tests
testPaperExamples
	self assert: (r eval: #((lambda x (lambda y (next_to (var y) (var x)))) #vt)) equals: #(lambda y (next_to (var y) vt)) asConsTree.