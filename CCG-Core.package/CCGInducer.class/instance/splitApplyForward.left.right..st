combining
splitApplyForward: synsem left: left right: right
	^ { synsem. left. right } match: #((_syn _) ((_syn / _rsyn) _) (_rsyn _)) o: [ :syn :sem :rsyn :lsem :rsem |
			{rsyn === #N.
			interpreter apply: lsem to: rsem o: sem}
		].