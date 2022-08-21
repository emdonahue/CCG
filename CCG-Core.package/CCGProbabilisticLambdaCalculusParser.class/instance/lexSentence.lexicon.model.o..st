lexing
lexSentence: aSentence lexicon: aLexicon model: aModel o: aLex
	^ {{aSentence isEmptyo. aLex isEmptyo}.
		aSentence carCdro: [ :w :ws | 
			{{w isPairo. 
				aLex carCdro: [ :lexeme :lex | 
					{lexeme === (#N cons: w cons). 
						self lexSentence: ws lexicon: aLexicon model: aModel o: lex.}]}.
			{w isSymbolo. 
				[ :mwe :sent |
					{self nlsentence: aSentence prefix: mwe suffix: sent.			
					aLex carCdro: [ :lexeme :lex |
						{self lexWord: mwe lexicon: aLexicon model: aModel o: lexeme.
						self lexSentence: sent lexicon: aLexicon model: aModel o: lex}]}]}
			} conde ]} conde.
		
	"	[ :mwe :sent |
			{self sentence: aSentence prefix: mwe suffix: sent.			
			aLex carCdro: [ :lexeme :lex |
					{self lexWord: mwe lexicon: aLexicon model: aModel o: lexeme.
				self lexSentence: sent lexicon: aLexicon model: aModel o: lex}]}] Missing opener for closer: } ->} conde."