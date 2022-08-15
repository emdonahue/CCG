running
setUp
	super setUp.
	i := CCGInducer new interpreter: (CCGLimitedLCReducer new maxDepth: -1).