tests - exception raising
testp03fail27xml
	"Source file: oasis/p03fail27.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp03fail27xml.
	self
		should: [
			self
				parse: self class sourcep03fail27xml
				documentURI: 'p03fail27.xml']
		raise: self parserExceptions