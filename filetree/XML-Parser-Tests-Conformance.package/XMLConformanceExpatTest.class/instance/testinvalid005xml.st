tests - exception raising
testinvalid005xml
	"Source file: xmltest/invalid/005.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalid005xml.
	self
		should: [
			self
				parse: self class sourceinvalid005xml
				documentURI: 'invalid/005.xml']
		raise: self parserExceptions