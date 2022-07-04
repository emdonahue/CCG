running
testSplitLexicalItem
	self assert: (i splitLexicalItem: #((good cat) N (good cat)) asConsR left: #((good) (N / N2) good) asConsR right: #((cat) N2 cat) asConsR) succeeds. "Apply forward"
	self assert: (i splitLexicalItem: #((cat good) N (good cat)) asConsR left: #((cat) N2 cat) asConsR right: #((good) (N \ N2) good) asConsR ) succeeds. "Apply backward"
	self assert: ( i splitLexicalItem: #((good cat) (A / C) (lambda x (good (cat (var x))))) asConsR left: #((good) (A / B) good) asConsR right: #((cat) (B / C) cat) asConsR ) succeeds. "Compose forward"
	self assert: ( i splitLexicalItem: #((cat good) (A \ C) (lambda x (good (cat (var x))))) asConsR left: #((cat) (B \ C) cat) asConsR right: #((good) (A \ B) good) asConsR) succeeds. "Compose backward"