tests - exception raising
testnotwfsa032xml
	"Source file: xmltest/not-wf/sa/032.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa032xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa032xml
				documentURI: 'not-wf/sa/032.xml']
		raise: self parserExceptions