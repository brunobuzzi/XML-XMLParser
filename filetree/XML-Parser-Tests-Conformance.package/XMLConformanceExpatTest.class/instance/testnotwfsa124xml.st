tests - exception raising
testnotwfsa124xml
	"Source file: xmltest/not-wf/sa/124.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsa124xml.
	self
		should: [
			self
				parse: self class sourcenotwfsa124xml
				documentURI: 'not-wf/sa/124.xml']
		raise: self parserExceptions