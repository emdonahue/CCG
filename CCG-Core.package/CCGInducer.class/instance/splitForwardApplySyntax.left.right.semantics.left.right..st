as yet unclassified
splitForwardApplySyntax: syn left: syn1 right: syn2 semantics: sem left: sem1 right: sem2
	^ {{ syn. syn2. syn1 } matcho: #(_1 _2 (_1 / _2)).
			interpreter apply: sem1 to: sem2 o: sem.
		} asGoal.