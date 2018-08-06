combining
compose: left forwards: right out: aResult
	^ left match: #(true ? ?) o: [ :lout :lin | right match: #(true ? ?) o: [ :rout :rin | lin === rout & (aResult === (true cons: lout cons: rin cons)) ] ].