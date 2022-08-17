induction
lex: aFullLex sentence: aSentence model: aModel o: aLex
	^ {{aSentence isEmptyo. aLex isEmptyo. aFullLex isEmptyo}.
		[ :mwe :sent |
			{mwe =/= Cons empty.
			mwe append: sent o: aSentence.
			aLex carCdro: [ :lexeme :lex |
				aFullLex carCdro: [ :fulllexeme :fulllex |
				{self lexWord: mwe model: aModel o: lexeme.
				fulllexeme === (mwe cons: lexeme).
				self lex: fulllex sentence: sent model: aModel o: lex}]]}]} conde.