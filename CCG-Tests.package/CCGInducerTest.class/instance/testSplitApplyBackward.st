running
testSplitApplyBackward
	
	self assert: [ :x | i splitApplyBackward: #(N (good cat)) asConsTree left: #(N2 cat) asConsTree right: x ] asGoal run caar equals: #((N \ N2) good) asConsTree.
	self assert: [ :x | i splitApplyBackward: #(N (good cat)) asConsTree left: x right: #((N \ N2) good) asConsTree ] asGoal run caar equals: #(N2 cat) asConsTree.
	self assert: [ :x | i splitApplyBackward: x left: #(N2 cat) asConsTree right: #((N \ N2) good) asConsTree ] asGoal run caar equals: #(N (good cat)) asConsTree.