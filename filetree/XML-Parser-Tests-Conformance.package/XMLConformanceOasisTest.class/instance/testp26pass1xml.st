tests
testp26pass1xml
	"Source file: oasis/p26pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp26pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep26pass1xml
				documentURI: 'p26pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions