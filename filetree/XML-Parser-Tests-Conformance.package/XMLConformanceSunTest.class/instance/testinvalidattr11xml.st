tests - exception raising
testinvalidattr11xml
	"Source file: sun/invalid/attr11.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidattr11xml.
	self
		should: [
			self
				parse: self class sourceinvalidattr11xml
				documentURI: 'invalid/attr11.xml']
		raise: self parserExceptions