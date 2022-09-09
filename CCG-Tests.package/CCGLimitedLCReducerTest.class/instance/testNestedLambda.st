tests
testNestedLambda
	| r |
	r := CCGLimitedLCReducer new.
	"self assert: [ :o | r apply: #(lambda x1 (test (var x1))) asConsR to: #(pass) asConsR o: o ] asGoal run first equals: #((test (pass))) asConsR."
	
	"{#lambda. v. {#test. #(var x1). {#var. v}}}"
	"{#lambda. #x1. v}"
	([ :v | [ :o | 
			"r lambda: #(lambda x1 (test (var x1))) asConsR env: Cons empty o: v depth: -1"
			"r lambdaEval: #() env: Cons empty o: o depth: -1"
			r apply: v asConsR to: #(pass) asConsR o: o
			]] asGoal runList take: 40) inspect.