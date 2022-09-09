running
testSplitComposeBackward

	self assert: [ :x | i splitComposeBackward: x left: #((B \ C) cat) asConsR right: #((A \ B) good) asConsR ] asGoal runList caar equals: #((A \ C) (lambda x (good (cat (var x))))) asConsR.
	self assert: [ :x | i splitComposeBackward: #((A \ C) (lambda x (good (cat (var x))))) asConsR left: x right: #((A \ B) good) asConsR ] asGoal runList caar equals: #((B \ C) cat) asConsR.
		self assert: [ :x | i splitComposeBackward: #((A \ C) (lambda x (good (cat (var x))))) asConsR left: #((B \ C) cat) asConsR right: x ] asGoal runList caar equals: #((A \ B) good) asConsR.