tests - exception raising
testnotwfsgml09xml
	"Source file: sun/not-wf/sgml09.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfsgml09xml.
	self
		should: [
			self
				parse: self class sourcenotwfsgml09xml
				documentURI: 'not-wf/sgml09.xml']
		raise: self parserExceptions