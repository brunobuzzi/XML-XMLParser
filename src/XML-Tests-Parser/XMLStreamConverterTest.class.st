Class {
	#name : #XMLStreamConverterTest,
	#superclass : #TestCase,
	#category : #'XML-Tests-Parser-Streams'
}

{ #category : #testing }
XMLStreamConverterTest class >> shouldInheritSelectors [
	^ true
]

{ #category : #accessing }
XMLStreamConverterTest >> encodingNames [
	^ self streamConverterClass encodingNames
]

{ #category : #'instance creation' }
XMLStreamConverterTest >> newStreamConverter [
	^ self streamConverterClass new
]

{ #category : #accessing }
XMLStreamConverterTest >> streamConverterClass [
	^ XMLStreamConverter
]

{ #category : #tests }
XMLStreamConverterTest >> testAsXMLStreamConverter [
	| streamConverter |

	streamConverter := self newStreamConverter.
	self assert: streamConverter asXMLStreamConverter == streamConverter.
]

{ #category : #tests }
XMLStreamConverterTest >> testEncoding [
	self encodingNames do: [:each |
		self assert: each asXMLStreamConverter encoding = each].
	self assert:
		((self encodingNames includes: self newStreamConverter encoding)
			or: [self encodingNames isEmpty]).
]

{ #category : #tests }
XMLStreamConverterTest >> testIsDefault [
	self deny: self newStreamConverter isDefault
]

{ #category : #tests }
XMLStreamConverterTest >> testIsNull [
	self deny: self newStreamConverter isNull
]