combining
apply: left backwards: right o: out

	^ {left. right} match: #((_1 _) ((_ \ _1) _)) o: [ :synin :arg :synout :lambda | 
		out === (synout cons: (lambda cons: arg cons) cons)].