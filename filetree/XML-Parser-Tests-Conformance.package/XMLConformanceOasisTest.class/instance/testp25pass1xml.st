tests
testp25pass1xml
	"Source file: oasis/p25pass1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp25pass1xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep25pass1xml
				documentURI: 'p25pass1.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions