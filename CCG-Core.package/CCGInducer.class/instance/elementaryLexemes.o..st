as yet unclassified
elementaryLexemes: aLexeme o: eLexemes
	self notYetImplemented.
	^ eLexemes match: #(_ _ . _) o: [ :l :r :rest |
		{self splitLexicalItem: aLexeme left: l right: r.
		
		{eLexemes === l. 
		eLexemes === r.
		self elementaryLexemes: l o: eLexemes.
		self elementaryLexemes: r o: eLexemes} conde
		}].