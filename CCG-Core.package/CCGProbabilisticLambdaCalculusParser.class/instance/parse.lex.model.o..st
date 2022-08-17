induction
parse: aSentence lex: aLex model: aModel o: aParse
	^ {self lexSentence: aSentence model: aModel o: aLex.
		aLex carCdro: [ :word :rest | self parseIn: word strIn: rest parseOut: aParse strOut: Cons empty ]}.