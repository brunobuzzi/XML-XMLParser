tests - exception raising
testnotwfsa004xml
	"Source file: xmltest/not-wf/sa/004.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa004xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa004xml
				documentURI: 'not-wf/sa/004.xml']
		raise: self parserExceptions