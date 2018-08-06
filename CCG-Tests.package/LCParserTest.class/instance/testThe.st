tests
testThe
	self assert: (parser recognize: #DT in: #the cons out: Cons empty) succeeds.