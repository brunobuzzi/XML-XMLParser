tests - exception raising
testinvalidel05xml
	"Source file: sun/invalid/el05.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidel05xml.
	self
		should: [
			self
				parse: self class sourceinvalidel05xml
				documentURI: 'invalid/el05.xml']
		raise: self parserExceptions