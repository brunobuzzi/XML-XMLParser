tests
testp32pass2xml
	"Source file: oasis/p32pass2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp32pass2xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep32pass2xml
				documentURI: 'p32pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions