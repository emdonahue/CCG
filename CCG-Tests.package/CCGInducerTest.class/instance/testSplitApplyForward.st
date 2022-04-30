running
testSplitApplyForward

	self assert: [ :x | i splitApplyForward: #(N (good cat)) asConsTree left: #((N / N2) good) asConsTree right: x ] asGoal run caar equals: #(N2 cat) asConsTree.
	self assert: [ :x | i splitApplyForward: #(N (good cat)) asConsTree left: x right: #(N2 cat) asConsTree ] asGoal run caar equals: #((N / N2) good) asConsTree.
	self assert: [ :x | i splitApplyForward: x left: #((N / N2) good) asConsTree right: #(N2 cat) asConsTree ] asGoal run caar equals: #(N (good cat)) asConsTree.