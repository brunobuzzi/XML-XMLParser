tests - exception raising
testnotwfpubid05xml
	"Source file: sun/not-wf/pubid05.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testnotwfpubid05xml.
	self
		should: [
			self
				parse: self class sourcenotwfpubid05xml
				documentURI: 'not-wf/pubid05.xml']
		raise: self parserExceptions