running
testSplitApplyBackward
	
	self assert: [ :x | i splitApplyBackward: #(N (good cat)) asConsR left: #(N2 cat) asConsR right: x ] asGoal run caar equals: #((N \ N2) good) asConsR.
	self assert: [ :x | i splitApplyBackward: #(N (good cat)) asConsR left: x right: #((N \ N2) good) asConsR ] asGoal run caar equals: #(N2 cat) asConsR.
	self assert: [ :x | i splitApplyBackward: x left: #(N2 cat) asConsR right: #((N \ N2) good) asConsR ] asGoal run caar equals: #(N (good cat)) asConsR.