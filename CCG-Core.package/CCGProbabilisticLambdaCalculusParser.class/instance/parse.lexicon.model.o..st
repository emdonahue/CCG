parsing
parse: aSentence lexicon: aLexicon model: aModel o: aParse
	^ [ :lex |
		{self lexSentence: aSentence lexicon: aLexicon model: aModel o: lex.
		lex carCdro: [ :word :rest | self parseIn: word strIn: rest parseOut: aParse strOut: Cons empty ]}].