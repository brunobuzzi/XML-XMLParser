tests
testp74pass1xml
	"Source file: oasis/p74pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp74pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep74pass1xml
				documentURI: 'p74pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions