combining
apply: left backwards: right o: aResult
	^ right match: #(#(? \ ?) #'.' ?) o: [ :lhs :rhs :lambda | rhs === left & (aResult === (lhs cons: lambda)) ].