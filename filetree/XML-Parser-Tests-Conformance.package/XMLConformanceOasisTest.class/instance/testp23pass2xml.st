tests
testp23pass2xml
	"Source file: oasis/p23pass2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp23pass2xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep23pass2xml
				documentURI: 'p23pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions