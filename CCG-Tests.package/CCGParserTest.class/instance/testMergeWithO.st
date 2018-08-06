tests
testMergeWithO
	self assert: [ :parse | parser merge: (true cons: #NP cons: #N cons) with: #N o: parse ] asGoal run equals: #NP cons cons.
	self assert: [ :parse | parser merge: #N with: (false cons: #NP cons: #N cons) o: parse ] asGoal run equals: #NP cons cons.
	self assert: [ :parse | parser merge: #N with: (false cons: #NP cons: #DT cons) o: parse ] asGoal fails.
	self
		assert: [ :parse | parser merge: (true cons: #VP cons: #NP cons) with: (true cons: #NP cons: #N cons) o: parse ] asGoal run
		equals: (true cons: #VP cons: #N cons) cons cons.
	"self
		assert: [ :parse | parser merge: (true cons: (false cons: #S cons: #NP cons) cons: #VP cons) with: (true cons: #VP cons: #NP cons) out: parse ] asGoal run
		equals: (true cons: (false cons: #S cons: #NP cons) cons: #NP cons) cons cons."