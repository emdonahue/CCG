as yet unclassified
splitComposeBackward: synsem left: left right: right
	^ { synsem. left. right } match: #(((_1 \ _3) _) ((_2 \ _3) _) ((_1 \ _2) _)) o: [ :syn1 :syn3 :sem :syn2 :lsem :rsem |
			interpreter compose: rsem with: lsem o: sem.
		].