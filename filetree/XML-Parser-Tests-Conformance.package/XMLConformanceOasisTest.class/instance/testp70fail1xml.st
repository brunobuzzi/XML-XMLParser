tests - exception raising
testp70fail1xml
	"Source file: oasis/p70fail1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp70fail1xml.
	self
		should: [
			self
				parse: self class sourcep70fail1xml
				documentURI: 'p70fail1.xml']
		raise: self parserExceptions