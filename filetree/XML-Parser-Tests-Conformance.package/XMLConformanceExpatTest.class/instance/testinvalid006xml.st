tests - exception raising
testinvalid006xml
	"Source file: xmltest/invalid/006.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalid006xml.
	self
		should: [
			self
				parse: self class sourceinvalid006xml
				documentURI: 'invalid/006.xml']
		raise: self parserExceptions