tests - exception raising
testnotwfextsa002xml
	"Source file: xmltest/not-wf/ext-sa/002.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfextsa002xml.
	self
		should: [
			self
				parse: self class sourcenotwfextsa002xml
				documentURI: 'not-wf/ext-sa/002.xml']
		raise: self parserExceptions