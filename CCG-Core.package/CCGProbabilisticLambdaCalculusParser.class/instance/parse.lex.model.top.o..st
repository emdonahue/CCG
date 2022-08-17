induction
parse: aSentence lex: aLex model: aModel top: aTop o: aParse
	^ self parse: aSentence lex: aLex model: aModel o: (aTop cons: aParse cons).