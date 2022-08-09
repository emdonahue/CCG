tests
testCatullusIsACat
	self assert: (parser parseS: #((N catullus) (((S / N) \N) is_a) (N cat)) asConsR) first first
		equals: #((is_a catullus) cat) asConsR.