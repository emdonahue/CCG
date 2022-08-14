as yet unclassified
lexSentence: aSentence lexicon: aLexicon model: aModel o: aLex
	^ {{aSentence isEmptyo. aLex isEmptyo}.
		[ :mwe :sent |
			{mwe =/= Cons empty.
			mwe append: sent o: aSentence.
			aLex carCdro: [ :lexeme :lex |
				{self lexWord: mwe lexicon: aLexicon model: aModel o: lexeme.
				self lexSentence: sent lexicon: aLexicon model: aModel o: lex}]}]} conde.