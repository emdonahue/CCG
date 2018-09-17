combining
apply: left forwards: right o: aResult
	^ left
		match: #(#(? / ?) ?)
		o: [ :outType :inType :lambda | right match: #(? ?) o: [ :argType :arg | inType === argType & (aResult === (outType cons: (lambda cons: arg cons) cons)) ] ].