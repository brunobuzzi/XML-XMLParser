tests - exception raising
testnotwfsa136xml
	"Source file: xmltest/not-wf/sa/136.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa136xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa136xml
				documentURI: 'not-wf/sa/136.xml']
		raise: self parserExceptions