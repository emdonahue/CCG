parsing
parse: aSentence lexicon: aLexicon model: aModel top: aTop o: aParse
	^ self parse: aSentence lexicon: aLexicon model: aModel o: (aTop cons: aParse cons).