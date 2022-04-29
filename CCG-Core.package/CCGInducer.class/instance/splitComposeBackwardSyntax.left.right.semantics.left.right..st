as yet unclassified
splitComposeBackwardSyntax: syn left: syn1 right: syn2 semantics: sem left: sem1 right: sem2
	^ {{ syn. syn1. syn2 } matcho: #((_1 \ _3) (_2 \ _1) (_3 \ _2)).
			interpreter compose: sem2 with: sem1 o: sem.
		} asGoal.