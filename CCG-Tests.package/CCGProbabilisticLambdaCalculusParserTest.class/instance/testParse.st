tests
testParse
	| p |
	p := CCGProbabilisticLambdaCalculusParser new.
	self assert: [ :o | p parse: #(cat) asCons lexicon: #((cat N cat)) asConsR model: (SKCategorical new probabilities: (Dictionary with: #(cat N cat) asCons -> 0.5)) top: #N o: o ] asGoal runLikelihoods first equals: {#cat cons. 0.5 ln}.	