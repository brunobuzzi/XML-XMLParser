tests - exception raising
testp76fail1xml
	"Source file: oasis/p76fail1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp76fail1xml.
	self
		should: [
			self
				parse: self class sourcep76fail1xml
				documentURI: 'p76fail1.xml']
		raise: self parserExceptions