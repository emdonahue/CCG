as yet unclassified
splitApplyForward: synsem left: left right: right
	^ { synsem. left. right } match: #((_1 _) ((_1 / _2) _) (_2 _)) o: [ :syn :sem :rsyn :lsem :rsem |
			interpreter apply: lsem to: rsem o: sem.
		].