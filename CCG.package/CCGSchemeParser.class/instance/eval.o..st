parsing
eval: aSentence o: aVal
	

	^ [ :lambda | (self parse: aSentence o: lambda) & (BLMQuineInterpreter new eval: lambda env: Cons empty val: aVal)].