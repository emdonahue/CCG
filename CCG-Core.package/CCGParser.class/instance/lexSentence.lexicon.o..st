parsing
lexSentence: aSentence lexicon: aLexicon o: aLex
	^ {{aSentence isEmptyo. aLex isEmptyo}.
		aSentence carCdro: [ :a :d | 
			{{a isPairo. aLex === (a cons: #N cons: a cons). false}.
			{"a isSymbolo."
				aLex carCdro: [ :a2 :d2 |
					{self lexWord: a lexicon: aLexicon o: a2.
					self lexSentence: d lexicon: aLexicon o: d2}]}} conde]} conde.