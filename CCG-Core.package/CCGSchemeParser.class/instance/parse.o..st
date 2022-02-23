parsing
parse: aSentence o: aParse
	"test cons based syntax::semantics pairs for speed"

	<todo>
	^ aSentence carCdro: [ :word :rest | self parseIn: word strIn: rest parseOut: (#S cons: aParse cons) strOut: Cons empty ].