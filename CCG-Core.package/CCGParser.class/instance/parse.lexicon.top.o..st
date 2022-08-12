parsing
parse: aSentence lexicon: aLexicon top: aTop o: aParse
	^ [ :lex |
		{self lexSentence: aSentence lexicon: aLexicon o: lex.
		lex carCdro: [ :word :rest | self parseIn: word strIn: rest parseOut: (aTop cons: aParse) strOut: Cons empty ]}].