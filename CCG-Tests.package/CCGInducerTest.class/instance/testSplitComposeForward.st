running
testSplitComposeForward

	self assert: [ :x | i splitComposeForward: x left: #((A / B) good) asConsTree right: #((B / C) cat) asConsTree ] asGoal run caar equals: #((A / C) (lambda x (good (cat (var x))))) asConsTree.
	self assert: [ :x | i splitComposeForward: #((A / C) (lambda x (good (cat (var x))))) asConsTree left: x right: #((B / C) cat) asConsTree ] asGoal run caar equals: #((A / B) good) asConsTree.
	self assert: [ :x | i splitComposeForward: #((A / C) (lambda x (good (cat (var x))))) asConsTree left: #((A / B) good) asConsTree right: x ] asGoal run caar equals: #((B / C) cat) asConsTree.