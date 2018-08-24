parsing
parse: aSentence top: aTop o: aParse
	^ aSentence carCdrIn: [ :word :rest | self parseIn: word strIn: rest parseOut: (aTop cons: aParse) strOut: Cons empty ] 