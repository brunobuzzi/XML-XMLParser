tests - exception raising
testnotwfsa003xml
	"Source file: xmltest/not-wf/sa/003.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa003xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa003xml
				documentURI: 'not-wf/sa/003.xml']
		raise: self parserExceptions