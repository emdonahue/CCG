as yet unclassified
splitLexcalItem: lexicalItem left: lexicalItem1 right: lexicalItem2
	"(string syntax semantics)"
	^ lexicalItem match: #(_ _ _) o: [ :str :syn :sem :str1 :str2 :syn1 :syn2 :sem1 :sem2 |
			{ self splitString: str left: str1 right: str2.
				self splitSyntax: syn left: syn1 right: syn2 semantics: sem left: sem1 right: sem2.
				lexicalItem1 === (str1 cons: syn1 cons: sem1 cons).
				lexicalItem2 === (str2 cons: syn2 cons: sem2) } ].