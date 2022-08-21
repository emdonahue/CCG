lexing
nlsentence: aSentence prefix: aPrefix suffix: aSuffix
	^ {aSentence. aPrefix} match: #((_1 . _) (_1 . _)) o: [ :w :s :p |
		{w isSymbolo. 
		{aSuffix === s & p isEmptyo.
			self nlsentence: s prefix: p suffix: aSuffix} conde}].