parsing
parseIn: parseIn strIn: strIn parseOut: parseOut strOut: strOut
	"combine fresh and carcdrin"

	<todo>
	^ parseIn === parseOut & (strIn === strOut)
		|
			(strIn
				carCdrIn: [ :cat :cats | 
					[ :parseMid :strMid :top | 
					(self parseIn: cat strIn: cats parseOut: parseMid strOut: strMid) & (self merge: parseIn with: parseMid o: top) & (self parseIn: top strIn: strMid parseOut: parseOut strOut: strOut) ] ]).