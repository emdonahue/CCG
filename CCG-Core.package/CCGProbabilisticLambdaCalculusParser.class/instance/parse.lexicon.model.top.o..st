parsing
parse: aSentence lexicon: aLexicon model: aModel top: aTop o: aParse
	^ [ :lex |
		{self lexSentence: aSentence lexicon: aLexicon model: aModel o: lex.
		lex carCdro: [ :word :rest | self parseIn: word strIn: rest parseOut: (aTop cons: aParse) strOut: Cons empty ]}].