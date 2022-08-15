test
testElementaryLexemesO

	[ :o | CCGInducer new elementaryLexemes: #((cats are good) S (are cats good)) asConsR o: o ] asGoal runtime inspect