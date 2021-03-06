tests
testIsDeclaredPrefix
	| element elementsWithDeclaredPrefix |

	element := self newNodeWithElements.
	elementsWithDeclaredPrefix :=
		element allElementsSelect: [:each |
			each isDeclaredPrefix: 'prefix'].

	element allElementsDo: [:each |
		(elementsWithDeclaredPrefix includes: each )
			ifFalse: [self deny: (each isDeclaredPrefix: 'prefix')]].

	element declarePrefix: 'prefix' uri: 'newPrefixNS'.
	element allElementsDo: [:each | self assert: (each isDeclaredPrefix: 'prefix')].

	element undeclarePrefix: 'prefix'.
	element allElementsDo: [:each |
		(elementsWithDeclaredPrefix includes: each )
			ifTrue: [self assert: (each isDeclaredPrefix: 'prefix')]
			ifFalse: [self deny: (each isDeclaredPrefix: 'prefix')]].

	(element := self newNode) usesNamespaces: false.
	self
		deny: (element isDeclaredPrefix: 'prefix');
		deny: element usesNamespaces.