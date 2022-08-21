combining
apply: left forwards: right o: out

	^ {left. right} match: #(((_ / _1) _) (_1 _)) o: [ :synout :synin :lambda :arg :reduced | 
		{synin === #N.
		out === (synout cons: reduced cons).
		CCGLimitedLCReducer new apply: lambda to: arg o: reduced} ].