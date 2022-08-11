parsing
parse: aSentence lexicon: aLexicon top: aTop o: aParse
	^ aSentence carCdro: [ :word :rest | self parseIn: word strIn: rest parseOut: (aTop cons: aParse) strOut: Cons empty ] 