combining
apply: left forwards: right o: out

	^ {left. right} match: #((_ (_ / _1) _) (_ _1 _)) o: [ :word1 :synout :synin :lambda :word2 :arg | 
		{synin === #N.
		CCGLimitedLCReducer new apply: lambda to: arg o: out} ].