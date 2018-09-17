combining
apply: left backwards: right o: aResult
	^ right match: #(#(? \ ?) ?) o: [ :outType :inType :lambda | left match: #(? ?) o: [ :argType :arg | inType === argType & (aResult === (outType cons: (lambda cons: arg cons) cons)) ] ].