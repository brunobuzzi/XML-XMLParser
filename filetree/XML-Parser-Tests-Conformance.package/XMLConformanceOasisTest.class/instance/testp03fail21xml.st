tests - exception raising
testp03fail21xml
	"Source file: oasis/p03fail21.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp03fail21xml.
	self
		should: [
			self
				parse: self class sourcep03fail21xml
				documentURI: 'p03fail21.xml']
		raise: self parserExceptions