parsing
lexWord: aWord lexicon: aLexicon o: aLexeme
	^ aLexicon carCdro: [ :lexentry :lexicon | 
		lexentry carCdro: [ :word :lexeme |
			{{{aWord === word. aLexeme === lexeme}.
			aWord =/= word} conde.
			self lexWord: aWord lexicon: lexicon o: aLexeme}]].