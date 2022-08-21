lexing
lexSentence: aSentence lexicon: aLexicon model: aModel o: aLex
	^ {{aSentence isEmptyo. aLex isEmptyo}.
		[ :mwe :sent |
			{self sentence: aSentence prefix: mwe suffix: sent.
			aLex carCdro: [ :lexeme :lex |
				{self lexWord: mwe lexicon: aLexicon model: aModel o: lexeme.
				self lexSentence: sent lexicon: aLexicon model: aModel o: lex}]}]} conde.