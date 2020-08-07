combining
compose: left forwards: right o: aResult
	^ left
		match: #(#(? / #(? #'.' ?)) #'.' ?)
		o:
			[ :lSynOut :lSynIn :lSemIn :lSemOut | right match: #(#(? / ?) #'.' ?) o: [ :rSynOut :rIn :rSemOut | lSynIn === rSynOut & (lSemIn === rSemOut) & (aResult === ((lSynOut cons: #/ cons: rIn cons) cons: lSemOut)) ] ].