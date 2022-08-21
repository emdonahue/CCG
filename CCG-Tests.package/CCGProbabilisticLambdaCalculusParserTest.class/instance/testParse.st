tests
testParse
	| p |
	p := CCGProbabilisticLambdaCalculusParser new.
	
	self assert: 
	[ :o | p parse: #(cat) asCons lexicon: #(((cat) N cat)) asConsR model: (SKCategorical new probabilities: (Dictionary with: #((cat) N cat) asConsR -> 0.5)) top: #N o: o ] asGoal runLikelihoods first equals: {#cat. 0.5 ln}.
"#(((cat) N cat) ((good) (N / N) good)) asConsR"
"#(good cat) asCons "
	self assert: 
	[ :o| 
		"p lexSentence: #(good cat) asCons
		lexicon: #(((cat) N cat) ((good) (N / N) good)) asConsR 
		model: SKCategorical new
		o: o"
		p parse: #(good cat) asCons
		lexicon: #(((cat) N cat) #((good) #(N / N) #(lambda x1 (good (var x1))))) asConsR 
		model: (SKCategorical new probabilities: (Dictionary with: #((cat) N cat) asConsR -> 0.5 with: #((good) #(N / N) #(lambda x1 (good (var x1)))) asConsR -> 0.5)) 
		top: #N o: o 
		] asGoal
	runLikelihoods first equals: {#(good cat) asConsR. 0.25 ln}.