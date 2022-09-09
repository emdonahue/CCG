running
testSplitApplyForward

	self assert: [ :x | i splitApplyForward: #(N (good cat)) asConsR left: #((N / N2) good) asConsR right: x ] asGoal runList caar equals: #(N2 cat) asConsR.
	self assert: [ :x | i splitApplyForward: #(N (good cat)) asConsR left: x right: #(N2 cat) asConsR ] asGoal runList caar equals: #((N / N2) good) asConsR.
	self assert: [ :x | i splitApplyForward: x left: #((N / N2) good) asConsR right: #(N2 cat) asConsR ] asGoal runList caar equals: #(N (good cat)) asConsR.