as yet unclassified
recognize: Cat in: aString out: stringOut
	| wCat |
	wCat := SKVar tag: #WCat.
	^ aString carCdrIn: [ :Word :StringIn |
		(self lex: Word cat: wCat) & (self complete: Cat subcat: wCat in: StringIn out: stringOut)
		 ]