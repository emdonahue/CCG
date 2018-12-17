combining
apply: left forwards: right o: aResult
	^ left
		match: #(#(? / ?) #(lambda0 #(?) ?))
		o:
			[ :outType :inType :param :body | right match: #(? ?) o: [ :argType :arg | inType === argType & (aResult === (outType cons: ((#lambda0 cons: param cons cons: body cons) cons: arg cons) cons)) ] ].