tests
testp16pass1xml
	"Source file: oasis/p16pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp16pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep16pass1xml
				documentURI: 'p16pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions