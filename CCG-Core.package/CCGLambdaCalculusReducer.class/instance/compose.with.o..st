induction
compose: operator with: operand o: val
"(#lambda cons: #x cons: (operator cons: (operand cons: (#var cons: #x cons) cons) cons) cons) inspect."
	^ self eval: (#lambda cons: #x cons: (operator cons: (operand cons: (#var cons: #x cons) cons) cons) cons) env: Cons empty o: val.