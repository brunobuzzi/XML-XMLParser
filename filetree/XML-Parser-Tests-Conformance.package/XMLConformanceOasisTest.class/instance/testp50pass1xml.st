tests
testp50pass1xml
	"Source file: oasis/p50pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp50pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep50pass1xml
				documentURI: 'p50pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions