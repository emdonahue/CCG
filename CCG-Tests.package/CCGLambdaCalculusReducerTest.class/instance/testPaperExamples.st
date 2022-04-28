tests
testPaperExamples
	self assert: (r eval: #((lambda x (lambda y (next_to (var y) (var x)))) #vt)) equals: #(lambda y (next_to (var y) vt)) asConsTree.
	self assert: (r eval: #(#(lambda y (next_to (var y) vt)) #ny)) equals: #(next_to ny vt) asConsTree.
	
	self assert: (r eval: #(#(lambda x (border (var x))) #tex)) equals: #(border tex) asConsTree.
	self assert: (r eval: #(#(lambda x (state (var x))) #(border tex))) equals: #(state (border tex)) asConsTree.
	self assert: (r eval: #(#(lambda x (answer (var x))) #(state (border tex)))) equals: #(answer (state (border tex))) asConsTree.
	
	self assert: (r eval: #(lambda y ((lambda f (lambda x (and (state (var x)) ((var f) (var x)))))
		((lambda y (lambda x (next_to (var x) (var y)))) 
			(var y))) )) equals: #(lambda y (lambda x (and (state (var x)) (next_to (var x) (var y))))) asConsTree.
	self assert: (r eval: #((lambda y (lambda x (and (state (var x)) (next_to (var x) (var y))))) tex)) equals: #(lambda x (and (state (var x)) (next_to (var x) tex))) asConsTree.
	self assert: (r eval: #((lambda f (lambda x ((var f) (var x)))) (lambda x (and (state (var x)) (next_to (var x) tex))))) equals: #(lambda x (and (state (var x)) (next_to (var x) tex))) asConsTree.
	
	
	