tests
testStudent
	"A demo of a Bobrow STUDENT style algebra word problem."

	"Alice's age is one more than twice Bob's age."

	| alices age is one less than twice bobs |
	self
		assert:
			[ :parse | 
			[ :x1 :x2 :x3 :x4 :x5 :x6 :x7 | 
			alices := (#N cons: #/ cons: (#N cons: x1) cons) cons: (#alices cons: x1).	"N/N : (alices X)"
			age := #N cons: #age cons.	"N : (age)"
			is := ((#S cons: #/ cons: (#N cons: x3) cons) cons: #\ cons: (#N cons: x2) cons) cons: (#= cons: x2 cons: x3 cons).	"((S/N)\N) : (equals X Y)"
			one := #N cons: 1.	"N : 1"
			less := (#N cons: #\ cons: (#N cons: x7) cons) cons: (#- cons: x7 cons).
			than := ((#N cons: #\ cons: (#N cons: x5) cons) cons: #/ cons: (#N cons: x6) cons) cons: (#+ cons: x5 cons: x6 cons).	"(N\N)/N : (+ X Y)"
			twice := (#N cons: #/ cons: (#N cons: x4) cons) cons: (#* cons: 2 cons: x4 cons).
			bobs := (#N cons: #/ cons: (#N cons: x1) cons) cons: (#bobs cons: x1).	"N/N : (bobs X)"
			parser parse: (alices cons: age cons: is cons: (one cons: less cons: than cons: (twice cons: bobs cons: age cons))) top: #S o: parse ] ] asGoal run
		equals: #(#(#(#= #(#alices #age) #(#+ #(#- 1) #(#* 2 #(#bobs #age)))))) asConsTree 