as yet unclassified
lexWord: aWord lexicon: aLexicon model: aModel o: aLexeme
	^ aLexicon carCdro: [ :lexentry :lexicon | 
		lexentry carCdro: [ :word :lexeme |
			{{aWord === word. aModel sample: lexentry. aLexeme === lexeme}.
			{aWord =/= word. self lexWord: aWord lexicon: lexicon o: aLexeme}} conde]].