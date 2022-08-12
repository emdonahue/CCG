tests
testLexWord
	| p |
	p := CCGProbabilisticLambdaCalculusParser new.
	self assert: [ :o | p lexWord: #cat lexicon: #((cat N cat)) asConsR model: (SKCategorical new probabilities: (Dictionary with: #(cat N cat) asCons -> 0.5)) o: o ] asGoal runLikelihoods first equals: {#(N cat) asCons. 0.5 ln}.