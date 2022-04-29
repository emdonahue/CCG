as yet unclassified
splitBackwardApplySyntax: syn left: syn1 right: syn2 semantics: sem left: sem1 right: sem2
	^ {{ syn. syn1. syn2 } matcho: #(_1 _2 (_1 \ _2)).
			interpreter apply: sem2 to: sem1 o: sem.
			} asGoal.