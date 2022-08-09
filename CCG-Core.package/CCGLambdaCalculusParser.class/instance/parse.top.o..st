parsing
parse: aSentence top: aTop o: aParse
	^ aSentence carCdro: [ :word :rest | 
		self parseIn: word strIn: rest parseOut: (aTop cons: aParse cons) strOut: Cons empty ].