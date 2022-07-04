tests
testDepth
	self assert: (r eval: #(is_mortal socrates) asConsR env: Cons empty o: #(is_mortal socrates) asConsR) succeeds.
	self assert: (r eval: #(is_mortal socrates) asConsR env: Cons empty o: #(is_mortal socrates) asConsR depth: 1) fails.
	self assert: (r eval: #(is_mortal socrates) asConsR env: Cons empty o: #(is_mortal socrates) asConsR depth: 2) succeeds.
	self assert: (r eval: #(is_mortal (socrates)) asConsR env: Cons empty o: #(is_mortal (socrates)) asConsR depth: 2) fails.
	self assert: (r eval: #(is_mortal (socrates)) asConsR env: Cons empty o: #(is_mortal (socrates)) asConsR depth: 3) succeeds.
	