parsing
parseS: aSentence
	^ [ :o | self parse: aSentence top: #S o: o ] asGoal runList.