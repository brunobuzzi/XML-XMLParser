tests - exception raising
testnotwfsa013xml
	"Source file: xmltest/not-wf/sa/013.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa013xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa013xml
				documentURI: 'not-wf/sa/013.xml']
		raise: self parserExceptions