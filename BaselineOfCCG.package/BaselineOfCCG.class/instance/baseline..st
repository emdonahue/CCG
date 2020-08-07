accessing
baseline: spec
	<baseline>
	spec
		for: #common
		do: [
			spec 
				baseline: 'SmallKanren' with: [ spec repository: 'github://emdonahue/SmallKanren' ];
				baseline: 'Contracts' with: [ spec repository: 'github://emdonahue/Contracts' ];			
				package: 'CCG-Core' with: [ spec requires: #('SmallKanren' 'Contracts') ];
				package: 'CCG-Tests' with: [ spec requires: #('CCG-Core' 'SmallKanren' 'Contracts') ] ]