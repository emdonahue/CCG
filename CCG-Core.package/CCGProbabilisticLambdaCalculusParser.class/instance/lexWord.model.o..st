induction
lexWord: aWord model: aModel o: aLexeme
	^ [ :syntax :semantics |
			aLexeme === (aWord cons: syntax cons: semantics cons)].