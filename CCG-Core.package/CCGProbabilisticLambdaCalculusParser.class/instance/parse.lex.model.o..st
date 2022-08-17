induction
parse: aSentence lex: aLex model: aModel o: aParse
	^ [ :lex | 
		{self lex: aLex sentence: aSentence model: aModel o: lex.
		lex carCdro: [ :word :rest | self parseIn: word strIn: rest parseOut: aParse strOut: Cons empty ]}].