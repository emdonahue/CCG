combining
apply: left backwards: right o: out

	^ {left. right} match: #((_ _1 _) (_ (_ \ _1) _)) o: [ :word1 :synin :arg :word2 :synout :lambda :reduced | 
		{synin === #N.
		out === (synout cons: reduced cons).
		CCGLimitedLCReducer new apply: lambda to: arg o: reduced}].