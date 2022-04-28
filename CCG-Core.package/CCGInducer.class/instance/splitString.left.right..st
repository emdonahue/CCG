as yet unclassified
splitString: str left: str1 right: str2
	^ {str1 =/= Cons empty.
		str2 =/= Cons empty.
		str1 append: str2 o: str.} asGoal.