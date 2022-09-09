as yet unclassified
splitLexcalItem: lexicalItem
	"(string syntax semantics)"
	^ ([ :str1 :str2 :syn1 :syn2 :sem1 :sem2 |
			lexicalItem match: #(_ _ _) o: [ :str :syn :sem |
				self splitString: str left: str1 right: str2.
		]] asGoal runList collect: [ :x | x first cons: x second cons ]) first.