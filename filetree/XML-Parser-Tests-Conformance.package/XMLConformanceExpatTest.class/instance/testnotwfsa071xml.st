tests - exception raising
testnotwfsa071xml
	"Source file: xmltest/not-wf/sa/071.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa071xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa071xml
				documentURI: 'not-wf/sa/071.xml']
		raise: self parserExceptions