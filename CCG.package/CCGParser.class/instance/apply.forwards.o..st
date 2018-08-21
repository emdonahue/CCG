combining
apply: left forwards: right o: aResult

	^ left match: #(#(? / ?) #'.' ?) o: [ :lhs :rhs :lambda | rhs === right & (aResult === (lhs cons: lambda)) ].