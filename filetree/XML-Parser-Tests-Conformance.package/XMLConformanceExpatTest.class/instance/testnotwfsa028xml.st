tests - exception raising
testnotwfsa028xml
	"Source file: xmltest/not-wf/sa/028.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa028xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa028xml
				documentURI: 'not-wf/sa/028.xml']
		raise: self parserExceptions