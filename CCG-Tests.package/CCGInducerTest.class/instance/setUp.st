running
setUp
	super setUp.
	i := CCGInducer new interpreter: (CCGLambdaCalculusReducer new maxDepth: 3).