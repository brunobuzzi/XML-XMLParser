tests - exception raising
testp05fail4xml
	"Source file: oasis/p05fail4.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp05fail4xml.
	self
		should: [
			self
				parse: self class sourcep05fail4xml
				documentURI: 'p05fail4.xml']
		raise: self parserExceptions