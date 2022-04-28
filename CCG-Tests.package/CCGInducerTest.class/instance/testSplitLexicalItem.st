running
testSplitLexicalItem
	[ :l :r | i splitLexcalItem: #((the good cat) x x) asConsTree left: l right: r ] asGoal run force inspect.