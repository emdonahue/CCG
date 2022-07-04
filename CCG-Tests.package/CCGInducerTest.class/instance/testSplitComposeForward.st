running
testSplitComposeForward

	self assert: [ :x | i splitComposeForward: x left: #((A / B) good) asConsR right: #((B / C) cat) asConsR ] asGoal run caar equals: #((A / C) (lambda x (good (cat (var x))))) asConsR.
	self assert: [ :x | i splitComposeForward: #((A / C) (lambda x (good (cat (var x))))) asConsR left: x right: #((B / C) cat) asConsR ] asGoal run caar equals: #((A / B) good) asConsR.
	self assert: [ :x | i splitComposeForward: #((A / C) (lambda x (good (cat (var x))))) asConsR left: #((A / B) good) asConsR right: x ] asGoal run caar equals: #((B / C) cat) asConsR.