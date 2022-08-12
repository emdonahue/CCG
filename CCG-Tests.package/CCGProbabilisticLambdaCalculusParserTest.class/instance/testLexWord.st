tests
testLexWord
	| p |
	p := CCGProbabilisticLambdaCalculusParser new.
	self assert: [ :o | p lexWord: #cat lexicon: #((cat N cat) (good (N / N) good)) asConsR model: (SKCategorical new probabilities: (Dictionary with: #(cat N cat) asCons -> 0.5 with: #(good (N / N) good) asConsR -> 0.5)) o: o ] asGoal runLikelihoods first equals: {#(N cat) asCons. 0.5 ln}.
	self assert: [ :o | p lexWord: #good lexicon: #((cat N cat) (good (N / N) good)) asConsR model: (SKCategorical new probabilities: (Dictionary with: #(cat N cat) asCons -> 0.5 with: #(good (N / N) good) asConsR -> 0.5)) o: o ] asGoal runLikelihoods first equals: {#((N / N) good) asConsR. 0.5 ln}.