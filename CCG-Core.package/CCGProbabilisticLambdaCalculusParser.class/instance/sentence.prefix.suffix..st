lexing
sentence: aSentence prefix: aPrefix suffix: aSuffix
	^ {aSentence. aPrefix} match: #((_1 . _) (_1 . _)) o: [ :w :s :p |
		{aSuffix === s & p isEmptyo.
			self sentence: s prefix: p suffix: aSuffix} conde].