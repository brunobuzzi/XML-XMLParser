tests - exception raising
testp61fail1xml
	"Source file: oasis/p61fail1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp61fail1xml.
	self
		should: [
			self
				parse: self class sourcep61fail1xml
				documentURI: 'p61fail1.xml']
		raise: self parserExceptions