combining
apply: left backwards: right o: out

	^ {left. right} match: #((_1 _) ((_ \ _1) _)) o: [ :synin :arg :synout :lambda :reduced | 
		{synin === #N.
		out === (synout cons: reduced cons).
		CCGLimitedLCReducer new apply: lambda to: arg o: reduced} ].