tests
testElementPrefixes
	| document  persons |

	document := XMLDOMParser parse: self addressBookNamespacePrefixedXML.
	persons := 	document allElementsSelect: [:each |
		(each isNamedAny: #('notperson' 'ps:person'))
			and: [(each isNamedAny: #('notperson' 'person'))
				and: [(each isNamed: 'person')
					and: [(each isNamed: 'ps:person')
						and: [(each name = 'ps:person') and: [each localName = 'person']]]]]].
	self assert: persons size equals: 4.