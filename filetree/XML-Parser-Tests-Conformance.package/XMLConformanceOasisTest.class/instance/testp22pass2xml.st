tests
testp22pass2xml
	"Source file: oasis/p22pass2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp22pass2xml.
	self
		shouldnt: [
			[self
				parse: self class sourcep22pass2xml
				documentURI: 'p22pass2.xml']
				on: self parserExceptions
				do: [:error |
					(self isIgnorableParserException: error)
						ifFalse: [error pass]]]
		raise: self parserExceptions