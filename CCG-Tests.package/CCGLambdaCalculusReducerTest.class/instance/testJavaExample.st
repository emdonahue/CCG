tests
testJavaExample
	"Test splits of (lambda $0 (and (loc $0 arkansas) (river $0))) and ensure they match the Java implementation."
	"Overgenerates relative to Java. Probably doing a more complete higher order unification."
	self skip.
	[ :a :b | {r eval: (a cons: b cons) o: #(lambda x (and (loc (var x) arkansas) (river (var x)))) asConsTree. } ] asGoal run inspect.