running
testSplitString
	self assert: [ :l :r | i splitString: #(the good cat) asConsR left: l right: r ] asGoal runList asSet equals: #(((the) (good cat)) ((the good) (cat))) asConsR asSet.