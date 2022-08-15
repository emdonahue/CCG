as yet unclassified
elementaryLexemes: aLexeme o: eLexemes
	^ [ :l :r | 
		{self splitLexicalItem: aLexeme left: l right: r.
		{eLexemes === l. 
		eLexemes === r.
		self elementaryLexemes: l o: eLexemes.
		self elementaryLexemes: r o: eLexemes} conde
		}].