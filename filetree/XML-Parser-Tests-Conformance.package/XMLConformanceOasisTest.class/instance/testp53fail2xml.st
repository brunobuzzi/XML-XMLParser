tests - exception raising
testp53fail2xml
	"Source file: oasis/p53fail2.xml"

	self
		skipOrReturnWith: [^ self]
		ifSkippable: #testp53fail2xml.
	self
		should: [
			self
				parse: self class sourcep53fail2xml
				documentURI: 'p53fail2.xml']
		raise: self parserExceptions