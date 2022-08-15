combining
splitComposeForward: synsem left: left right: right
	^ { synsem. left. right } match: #(((_1 / _3) _) ((_1 / _2) _) ((_2 / _3) _)) o: [ :syn1 :syn3 :sem :syn2 :lsem :rsem |
			interpreter compose: lsem with: rsem o: sem
		].