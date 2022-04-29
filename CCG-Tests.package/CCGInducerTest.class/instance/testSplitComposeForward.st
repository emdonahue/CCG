running
testSplitComposeForward
	"self assert:" [ :syn1 :syn2 :sem1 :sem2 :sem | i splitComposeForwardSyntax: #(A/C) asConsTree left: syn1 right: syn2 semantics: sem asConsTree left: sem1 right: sem2 ] asGoal run first asOrderedCollection  inspect.
	"asSet equals: #(((the) (good cat)) ((the good) (cat))) asConsTree asSet."