tests - exception raising
testinvalidoptional23xml
	"Source file: sun/invalid/optional23.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testinvalidoptional23xml.
	self
		should: [
			self
				parse: self class sourceinvalidoptional23xml
				documentURI: 'invalid/optional23.xml']
		raise: self parserExceptions