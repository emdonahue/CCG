tests
testLexSentence
	| p |
	p := CCGProbabilisticLambdaCalculusParser new.
	
	self assert: [ :o | p lexSentence: #(cat) asCons lexicon: #(((cat) N cat)) asConsR model: (SKCategorical new probabilities: (Dictionary with: #((cat) N cat) asConsR -> 0.5)) o: o ] asGoal runLikelihoods first equals: {#((N cat)) asConsR. 0.5 ln}.
	
	self assert: [ :o | p lexSentence: #(good cat) asCons lexicon: #(((cat) N cat) ((good) (N / N) good)) asConsR model: (SKCategorical new probabilities: (Dictionary with: #((cat) N cat) asConsR -> 0.5 with: #((good) (N / N) good) asConsR -> 0.5)) o: o ] asGoal runLikelihoods first equals: {#(((N / N) good) (N cat)) asConsR. 0.25 ln}.
	
	self assert: [ :o | 
		p lexSentence: #(very very good cat) asCons 
		lexicon: #(((very very) (N / N) veryvery) ((cat) N cat) ((good) (N / N) good)) asConsR 
		model: (SKCategorical new probabilities: (Dictionary with: #((cat) N cat) asConsR -> 0.5 with: #((good) (N / N) good) asConsR -> 0.5 with: #((very very) (N / N) veryvery) asConsR -> 0.5)) o: o ] asGoal runLikelihoods first equals: {#(((N / N) veryvery) ((N / N) good) (N cat)) asConsR. 0.125 ln}.