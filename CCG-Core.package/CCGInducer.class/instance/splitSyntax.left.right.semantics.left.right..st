as yet unclassified
splitSyntax: syn left: syn1 right: syn2 semantics: sem left: sem1 right: sem2
	^ { self splitForwardApplySyntax: syn left: syn1 right: syn2 semantics: sem left: sem1 right: sem2.
			self splitBackwardApplySyntax: syn left: syn1 right: syn2 semantics: sem left: sem1 right: sem2. } conde
	