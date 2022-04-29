as yet unclassified
splitComposeForwardSyntax: syn left: syn1 right: syn2 semantics: sem left: sem1 right: sem2
	^ {{ syn. syn1. syn2 } matcho: #((_1 / _3) (_1 / _2) (_2 / _3)).
			interpreter compose: sem1 with: sem2 o: sem.
		} asGoal.