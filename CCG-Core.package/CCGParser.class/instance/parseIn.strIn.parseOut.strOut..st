parsing
parseIn: parseIn strIn: strIn parseOut: parseOut strOut: strOut
	"parseIn	is a parse of the prefix of the string up to now. strIn is the rest of the string. parseOut is the intermediate parse of how much we decide to parse in this combination. strOut is the rest of the unparsed string after this operation."
	<todo> "combine fresh and carcdrin"
	
	^ {{parseIn === parseOut. strIn === strOut}.
		strIn carCdro: [ :cat :cats | 
			[ :parseMid :strMid :top | 
				{self parseIn: cat strIn: cats parseOut: parseMid strOut: strMid. "Parse some arbitrary amount of the rest of the string as intermediate parse parseMid and return the rest of the unparsed string as strMid."
				self merge: parseIn with: parseMid o: top. "Apply combinators to merge prefix parse with the intermediate parse parse."
				self parseIn: top strIn: strMid parseOut: parseOut strOut: strOut }]]} conde. "Parse the remainder of the string with the result of the combination as the prefix parse."