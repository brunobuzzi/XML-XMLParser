tests - exception raising
testnotwfsa094xml
	"Source file: xmltest/not-wf/sa/094.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa094xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa094xml
				documentURI: 'not-wf/sa/094.xml']
		raise: self parserExceptions