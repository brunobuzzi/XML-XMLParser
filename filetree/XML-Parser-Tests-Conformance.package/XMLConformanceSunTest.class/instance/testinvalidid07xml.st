tests - exception raising
testinvalidid07xml
	"Source file: sun/invalid/id07.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidid07xml.
	self
		should: [
			self
				parse: self class sourceinvalidid07xml
				documentURI: 'invalid/id07.xml']
		raise: self parserExceptions