induction
lexSentence: aSentence model: aModel o: aLex
	^ {{aSentence isEmptyo. aLex isEmptyo}.
		[ :mwe :sent |
			{mwe =/= Cons empty.
			mwe append: sent o: aSentence.
			aLex carCdro: [ :lexeme :lex |
				{self lexWord: mwe model: aModel o: lexeme.
				self lexSentence: sent model: aModel o: lex}]}]} conde.