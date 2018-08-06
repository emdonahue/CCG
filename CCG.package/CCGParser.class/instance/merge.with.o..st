combining
merge: left with: right o: aResult
	^ (self apply: left forwards: right out: aResult) | (self apply: left backwards: right out: aResult) | (self compose: left forwards: right out: aResult).