testing
matches: cats in: stringIn out: stringOut
	| string1 |
	string1 := SKVar tag: #matchString.
	^ (cats isEmptyo & (stringIn === stringOut)) | (cats carCdrIn: [ :cat :restCats | (self recognize: cat in: stringIn out: string1) & (self matches: restCats in: string1 out: stringOut) ])