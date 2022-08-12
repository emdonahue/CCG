parsing
lexSentence: aSentence lexicon: aLexicon o: aLex
	^ {{aSentence isEmptyo. aLex isEmptyo}.
		aSentence carCdro: [ :a :d | 
			aLex carCdro: [ :a2 :d2 |
				{self lexWord: a lexicon: aLexicon o: a2.
				self lexSentence: d lexicon: aLexicon o: d2}]]} conde.