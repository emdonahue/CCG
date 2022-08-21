lexing
sentence: aSentence prefix: aPrefix suffix: aSuffix
	^ aSentence carCdro: [ :w :ws |
		{{w isPairo. aPrefix === w cons. aSuffix === ws}.
		{w isSymbolo. self nlsentence: aSentence prefix: aPrefix suffix: aSuffix}} conde ].