tests - exception raising
testnotwfsa116xml
	"Source file: xmltest/not-wf/sa/116.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa116xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa116xml
				documentURI: 'not-wf/sa/116.xml']
		raise: self parserExceptions