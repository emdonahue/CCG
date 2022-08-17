induction
parse: aSentence lex: aLex model: aModel top: aTop o: aParse
	^ [ :words |
		self parse: aSentence lex: aLex model: aModel o: (words cons: aTop cons: aParse cons)].