tests - exception raising
testinvalidel02xml
	"Source file: sun/invalid/el02.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidel02xml.
	self
		should: [
			self
				parse: self class sourceinvalidel02xml
				documentURI: 'invalid/el02.xml']
		raise: self parserExceptions