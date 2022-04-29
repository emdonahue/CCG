tests
testDepth
	self assert: (r eval: #(is_mortal socrates) asConsTree env: Cons empty o: #(is_mortal socrates) asConsTree) succeeds.
	self assert: (r eval: #(is_mortal socrates) asConsTree env: Cons empty o: #(is_mortal socrates) asConsTree depth: 1) fails.
	self assert: (r eval: #(is_mortal socrates) asConsTree env: Cons empty o: #(is_mortal socrates) asConsTree depth: 2) succeeds.
	self assert: (r eval: #(is_mortal (socrates)) asConsTree env: Cons empty o: #(is_mortal (socrates)) asConsTree depth: 2) fails.
	self assert: (r eval: #(is_mortal (socrates)) asConsTree env: Cons empty o: #(is_mortal (socrates)) asConsTree depth: 3) succeeds.
	