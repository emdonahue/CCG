combining
apply: left backwards: right o: out

	^ {left. right} match: #((_ _1 _) (_ (_ \ _1) _)) o: [ :word1 :synin :arg :word2 :synout :lambda | 
		{synin === #N.
		CCGLimitedLCReducer new apply: lambda to: arg o: out}].