as yet unclassified
complete: Cat subcat: subCat in: stringIn out: stringOut
	| otherCats  |
	otherCats := SKVar tag: #otherCats.
	^ Cat === subCat & (stringIn === stringOut)
		|
			(SKVar new carCdrIn: [ :lhs :string1 | (self lhs: lhs corner: subCat rest: otherCats) & (self matches: otherCats in: stringIn out: string1)
				& (self complete: Cat subcat: lhs in: string1 out: stringOut) ]).