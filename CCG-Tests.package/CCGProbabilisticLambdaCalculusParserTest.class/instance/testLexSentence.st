tests
testLexSentence
	| p |
	p := CCGProbabilisticLambdaCalculusParser new.
	self assert: [ :o | p lexSentence: #(good cat) asCons lexicon: #((cat N cat) (good (N / N) good)) asConsR model: (SKCategorical new probabilities: (Dictionary with: #(cat N cat) asCons -> 0.5 with: #(good (N / N) good) asConsR -> 0.5)) o: o ] asGoal runLikelihoods first equals: {#(((N / N) good) (N cat)) asConsR. 0.25 ln}.