as yet unclassified
splitApplyBackward: synsem left: left right: right
	^ { synsem. left. right } match: #((_1 _) (_2 _) ((_1 \ _2) _)) o: [ :syn :sem :rsyn :lsem :rsem |
			interpreter apply: rsem to: lsem o: sem.
		].