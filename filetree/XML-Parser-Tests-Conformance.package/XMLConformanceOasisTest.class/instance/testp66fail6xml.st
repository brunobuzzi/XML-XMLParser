tests - exception raising
testp66fail6xml
	"Source file: oasis/p66fail6.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp66fail6xml.
	self
		should: [
			self
				parse: self class sourcep66fail6xml
				documentURI: 'p66fail6.xml']
		raise: self parserExceptions