as yet unclassified
splitSyntaxSemantics: synsem left: left right: right
	^ { self splitApplyForward: synsem left: left right: right.
			self splitApplyBackward: synsem left: left right: right.
			self splitComposeForward: synsem left: left right: right.
			self splitComposeBackward: synsem left: left right: right.
		} conde.