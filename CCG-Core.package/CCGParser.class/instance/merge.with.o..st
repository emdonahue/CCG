combining
merge: left with: right o: aResult
	^ (self apply: left forwards: right o: aResult) | (self apply: left backwards: right o: aResult) "| (self compose: left forwards: right o: aResult)."