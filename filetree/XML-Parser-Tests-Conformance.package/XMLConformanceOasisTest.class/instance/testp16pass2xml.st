tests
testp16pass2xml
	"Source file: oasis/p16pass2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp16pass2xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep16pass2xml
				documentURI: 'p16pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions