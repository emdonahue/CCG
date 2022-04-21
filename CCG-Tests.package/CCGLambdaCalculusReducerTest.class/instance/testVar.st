tests
testVar
	self assert: (r eval: #(var x) env: #((x . y))) equals: #y.