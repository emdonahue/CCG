running
testFiniteSplit
	self skip.
	[ :l :r | CCGInducer new splitLexicalItem: #((good cat) N (good cat)) asConsR left: l right: r] asGoal runList force inspect.