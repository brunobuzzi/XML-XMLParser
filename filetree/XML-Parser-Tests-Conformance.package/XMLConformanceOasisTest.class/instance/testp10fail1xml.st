tests - exception raising
testp10fail1xml
	"Source file: oasis/p10fail1.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp10fail1xml.
	self
		should: [
			self
				parse: self class sourcep10fail1xml
				documentURI: 'p10fail1.xml']
		raise: self parserExceptions