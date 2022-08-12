as yet unclassified
lexWord: aWord lexicon: aLexicon model: aModel o: aLexeme
	^ aLexicon carCdro: [ :lexentry :lexicon | 
		lexentry carCdro: [ :word :lexeme |
			{{aWord === word. aModel sample: lexentry. aLexeme === lexeme}.
			self lexWord: aWord lexicon: lexicon model: aModel o: aLexeme} conde]].