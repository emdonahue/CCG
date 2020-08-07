parsing
eval: aSentence o: aVal
	^ [ :lambda | (self parse: aSentence o: lambda) & (CCGSchemeInterpreter new eval: lambda env: Cons empty o: aVal) ].