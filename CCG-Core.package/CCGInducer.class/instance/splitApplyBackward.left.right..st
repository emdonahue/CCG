combining
splitApplyBackward: synsem left: left right: right
	^ { synsem. left. right } match: #((_1 _) (_2 _) ((_1 \ _2) _)) o: [ :syn :sem :lsyn :lsem :rsem |
			{lsyn === #N.
			interpreter apply: rsem to: lsem o: sem}
		].