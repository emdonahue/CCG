running
testSplitComposeBackward

	self assert: [ :x | i splitComposeBackward: x left: #((B \ C) cat) asConsTree right: #((A \ B) good) asConsTree ] asGoal run caar equals: #((A \ C) (lambda x (good (cat (var x))))) asConsTree.
	self assert: [ :x | i splitComposeBackward: #((A \ C) (lambda x (good (cat (var x))))) asConsTree left: x right: #((A \ B) good) asConsTree ] asGoal run caar equals: #((B \ C) cat) asConsTree.
		self assert: [ :x | i splitComposeBackward: #((A \ C) (lambda x (good (cat (var x))))) asConsTree left: #((B \ C) cat) asConsTree right: x ] asGoal run caar equals: #((A \ B) good) asConsTree.