tests - exception raising
testnotwfattlist03xml
	"Source file: sun/not-wf/attlist03.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfattlist03xml.
	self
		should: [
			self
				parse: self class sourcenotwfattlist03xml
				documentURI: 'not-wf/attlist03.xml']
		raise: self parserExceptions