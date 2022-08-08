combining
apply: left forwards: right o: out
	"In the manual parser, unifying categories already does the application, so just assemble the syn/sem poles."
	^ left match: #((_ / _) . _) o: [ :lhs :rhs :lambda | 
		{rhs === right. out === (lhs cons: lambda)}].