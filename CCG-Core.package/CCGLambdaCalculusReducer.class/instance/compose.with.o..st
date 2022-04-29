induction
compose: operator with: operand o: val
	^ self eval: (#lambda cons: #x cons: (operator cons: (operand cons: (#var cons: #x cons) cons) cons) cons) env: Cons empty o: val.