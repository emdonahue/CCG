parsing
train: aDataset lexicon: aLexicon model: aModel
	^ {aDataset isEmptyo.
		aDataset match: #((_ _) . _) o: [ :sent :parse :rest |
		{self parse: sent lexicon: aLexicon model: aModel o: parse.
		self train: rest lexicon: aLexicon model: aModel}]} conde.