combining
apply: left forwards: right out: aResult
	^ left match: #(true ? ?) o: [ :top :hole | right === hole & (aResult === top) ].