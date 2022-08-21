tests
testTrain
	| p model |
	p := CCGProbabilisticLambdaCalculusParser new.
	model := ([ :m | p train: #(((good cat) (N (good cat))) ((bad cat) (N (bad cat)))) asConsR 
		lexicon: #(((cat) N cat) ((good) (N / N) (lambda x1 (good (var x1)))) ((bad) (N / N) (lambda x1 (bad (var x1))))) asConsR 
		model: m first ] asGoal train: {SKCategorical new}) model first.
	self assert: (model probabilities at: #((cat) N cat) asConsR) closeTo: 0.5 precision: 0.0001.
	self assert: (model probabilities at: #((good) (N / N) (lambda x1 (good (var x1)))) asConsR) closeTo: 0.25 precision: 0.0001.
	self assert: (model probabilities at: #((bad) (N / N) (lambda x1 (bad (var x1)))) asConsR) closeTo: 0.25 precision: 0.0001.
	