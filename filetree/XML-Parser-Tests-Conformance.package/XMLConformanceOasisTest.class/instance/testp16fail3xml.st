tests - exception raising
testp16fail3xml
	"Source file: oasis/p16fail3.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp16fail3xml.
	self
		should: [
			self
				parse: self class sourcep16fail3xml
				documentURI: 'p16fail3.xml']
		raise: self parserExceptions