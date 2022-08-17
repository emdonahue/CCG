induction
apply: rator to: rand o: aVal
	^ [ :body :arg :val |
			{ self lambda: rator env: Cons empty o: (#lambda cons: arg cons: body cons) depth: maxDepth.
				self predicateEval: rand env: Cons empty o: val depth: maxDepth.
				self lambdaEval: body env: ((arg cons: val) cons) o: aVal depth: maxDepth}].