running
testSplitSyntaxSemantics
	"self assert:" [ :syn1 :syn2 :sem1 :sem2 | i splitSyntax: #N asConsTree left: syn1 right: syn2 semantics: #cat left: sem1 right: sem2 ] asGoal run second inspect.
	"asSet equals: #(((the) (good cat)) ((the good) (cat))) asConsTree asSet."