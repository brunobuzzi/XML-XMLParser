tests - exception raising
testinvalidoptional05xml
	"Source file: sun/invalid/optional05.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidoptional05xml.
	self
		should: [
			self
				parse: self class sourceinvalidoptional05xml
				documentURI: 'invalid/optional05.xml']
		raise: self parserExceptions