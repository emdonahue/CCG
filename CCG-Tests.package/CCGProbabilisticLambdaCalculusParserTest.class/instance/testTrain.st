tests
testTrain
	| p model |
	p := CCGProbabilisticLambdaCalculusParser new.
	model := ([ :m | p train: #(((good cat) (N (good cat))) ((bad cat) (N (bad cat)))) asConsR 
		lexicon: #(((cat) N cat) ((good) (N / N) good) ((bad) (N / N) bad)) asConsR 
		model: m first ] asGoal train: {SKCategorical new}) model first.
	self assert: (model probabilities at: #((cat) N cat) asCons) closeTo: 0.5 precision: 0.0001.
	self assert: (model probabilities at: #((good) (N / N) good) asConsR) closeTo: 0.25 precision: 0.0001.
	self assert: (model probabilities at: #((bad) (N / N) bad) asConsR) closeTo: 0.25 precision: 0.0001.
	