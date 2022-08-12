as yet unclassified
lexSentence: aSentence lexicon: aLexicon model: aModel o: aLex
	^ {{aSentence isEmptyo. aLex isEmptyo}.
		aSentence carCdro: [ :a :d | 
			aLex carCdro: [ :a2 :d2 |
				{self lexWord: a lexicon: aLexicon model: aModel o: a2.
				self lexSentence: d lexicon: aLexicon model: aModel o: d2}]]} conde.