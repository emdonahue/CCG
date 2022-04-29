running
testSplitString
	self assert: [ :l :r | i splitString: #(the good cat) asConsTree left: l right: r ] asGoal run asSet equals: #(((the) (good cat)) ((the good) (cat))) asConsTree asSet.