tests
testp46pass1xml
	"Source file: oasis/p46pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp46pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep46pass1xml
				documentURI: 'p46pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions