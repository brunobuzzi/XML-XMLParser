tests
testp03pass1xml
	"Source file: oasis/p03pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp03pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep03pass1xml
				documentURI: 'p03pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions