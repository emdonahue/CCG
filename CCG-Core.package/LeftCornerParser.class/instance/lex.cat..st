as yet unclassified
lex: aWord cat: aCat
	^ (aWord === #the & (aCat === #DT)) | (aWord === #cat & (aCat === #N)) | (aWord === #naps & (aCat === #V))