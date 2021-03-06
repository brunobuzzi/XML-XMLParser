tests
testExternalEntityByteOrderMarkDetection
	| content entity |

	content :=
		'<!DOCTYPE encoding-test [
				<!ENTITY external SYSTEM "extern.ent">
			]>', (self sourceXMLWithContent: '&external;').
	entity := self sourceContent.
	(Array
		with: self utf8BOM, entity
		with: self utf16BigEndianBOM, (self asciiToUTF16BE: entity)
		with: self utf16LittleEndianBOM, (self asciiToUTF16LE: entity)
		with: self utf32BigEndianBOM, (self asciiToUTF32BE: entity)
		with: self utf32LittleEndianBOM, (self asciiToUTF32LE: entity))
		do: [:each | | resolver document |
			(resolver := DTDStaticExternalEntityResolver new)
				externalEntityAtURI: 'extern.ent'
				put: each.
			self
				shouldnt: [
					document :=
						(XMLDOMParser on: content)
							externalEntityResolver: resolver copy;
							resolvesExternalEntities: true;
							parseDocument]
				raise: XMLParserException.
			self assertIsDecodedSourceXMLDocument: document].