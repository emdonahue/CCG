running
testSplitLexicalItem
	self assert: (i splitLexicalItem: #((good cat) N (good cat)) asConsTree left: #((good) (N / N2) good) asConsTree right: #((cat) N2 cat) asConsTree) succeeds. "Apply forward"
	self assert: (i splitLexicalItem: #((cat good) N (good cat)) asConsTree left: #((cat) N2 cat) asConsTree right: #((good) (N \ N2) good) asConsTree ) succeeds. "Apply backward"
	self assert: ( i splitLexicalItem: #((good cat) (A / C) (lambda x (good (cat (var x))))) asConsTree left: #((good) (A / B) good) asConsTree right: #((cat) (B / C) cat) asConsTree ) succeeds. "Compose forward"
	self assert: ( i splitLexicalItem: #((cat good) (A \ C) (lambda x (good (cat (var x))))) asConsTree left: #((cat) (B \ C) cat) asConsTree right: #((good) (A \ B) good) asConsTree) succeeds. "Compose backward"