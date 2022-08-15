interpreter
extend: newEnv env: oldEnv args: theArgs vals: theVals
	<todo> "Good candidate for multi-term-matching"
	^ (newEnv carCdrResto: [ :var :val :env |
					{ var === theArgs.
						val === theVals }]) tag: #extend_env.