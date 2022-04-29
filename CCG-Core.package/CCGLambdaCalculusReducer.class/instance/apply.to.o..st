induction
apply: operator to: operand o: val
	^ self eval: (operator cons: operand cons) env: Cons empty o: val.