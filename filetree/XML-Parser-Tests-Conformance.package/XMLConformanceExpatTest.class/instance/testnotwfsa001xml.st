tests - exception raising
testnotwfsa001xml
	"Source file: xmltest/not-wf/sa/001.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa001xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa001xml
				documentURI: 'not-wf/sa/001.xml']
		raise: self parserExceptions