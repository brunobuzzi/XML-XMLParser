tests - exception raising
testnotwfattlist11xml
	"Source file: sun/not-wf/attlist11.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfattlist11xml.
	self
		should: [
			self
				parse: self class sourcenotwfattlist11xml
				documentURI: 'not-wf/attlist11.xml']
		raise: self parserExceptions