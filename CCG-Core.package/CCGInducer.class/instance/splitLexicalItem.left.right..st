as yet unclassified
splitLexicalItem: lexicalItem left: left right: right
	"(string syntax semantics)"
	^ {lexicalItem. left. right} match: #((_ . _) (_ . _) (_ . _)) o: [ :str :synsem :lstr :lsynsem :rstr :rsynsem |
			{ self splitString: str left: lstr right: rstr.
				self splitSyntaxSemantics: synsem left: lsynsem right: rsynsem.
				"lstr carCdro: [ :w :ws | {ws isNotEmptyo. {ws isEmptyo. lsynsem === #N}} conde ].
				rstr carCdro: [ :w :ws | {ws isNotEmptyo. {ws isEmptyo. rsynsem === #N}} conde ]"} ].