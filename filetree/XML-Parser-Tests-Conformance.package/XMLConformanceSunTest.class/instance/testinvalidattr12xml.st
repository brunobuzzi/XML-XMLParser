tests - exception raising
testinvalidattr12xml
	"Source file: sun/invalid/attr12.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidattr12xml.
	self
		should: [
			self
				parse: self class sourceinvalidattr12xml
				documentURI: 'invalid/attr12.xml']
		raise: self parserExceptions