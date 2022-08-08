combining
apply: left forwards: right o: out

	^ {left. right} match: #(((_ / _1) _) (_1 _)) o: [ :synout :synin :lambda :arg | 
		out === (synout cons: (lambda cons: arg cons) cons)].