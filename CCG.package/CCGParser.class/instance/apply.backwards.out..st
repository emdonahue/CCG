combining
apply: left backwards: right out: aResult
	^ right match: #(false ? ?) o: [ :top :hole | left === hole & (aResult === top) ].