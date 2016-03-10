Class {
	#name : #XMLEncodingWriteStreamAdapterTest,
	#superclass : #XMLWriteStreamAdapterTest,
	#category : #'XML-Tests-Parser-Streams'
}

{ #category : #accessing }
XMLEncodingWriteStreamAdapterTest >> decodedInvalidCharacters [
	^ #()
]

{ #category : #accessing }
XMLEncodingWriteStreamAdapterTest >> decodedUnicodeInvalidCharacters [
	^ self stringFrom: #(16rD800 16rDBFF 16rDC00 16rD8FF 16r11FFFF)
]

{ #category : #'instance creation' }
XMLEncodingWriteStreamAdapterTest >> newStreamAdapterOn: aStream [
	^ (super newStreamAdapterOn: aStream)
		streamConverter: self streamConverterClass new
]

{ #category : #accessing }
XMLEncodingWriteStreamAdapterTest >> streamAdapterClass [
	^ XMLEncodingWriteStreamAdapter
]

{ #category : #accessing }
XMLEncodingWriteStreamAdapterTest >> streamConverterClass [
	^ XMLNullStreamConverter
]

{ #category : #tests }
XMLEncodingWriteStreamAdapterTest >> testHasDefaultStreamConverter [
	| adapter |

	adapter := self newStreamAdapter.
	self assert:
		adapter hasDefaultStreamConverter = adapter streamConverter isDefault.
]

{ #category : #tests }
XMLEncodingWriteStreamAdapterTest >> testHasNullStreamConverter [
	| adapter |

	adapter := self newStreamAdapter.
	self assert:
		adapter hasNullStreamConverter = adapter streamConverter isNull.
]

{ #category : #tests }
XMLEncodingWriteStreamAdapterTest >> testInvalidCharacters [
	self decodedInvalidCharacters do: [:each |
		self
			should: [self newStreamAdapter nextPut: each]
			raise: XMLEncodingException]
]

{ #category : #tests }
XMLEncodingWriteStreamAdapterTest >> testIsConvertingStreamAdapter [
	self assert: self newStreamAdapter isConvertingStreamAdapter
]

{ #category : #tests }
XMLEncodingWriteStreamAdapterTest >> testNextPutByteOrderMark [
	| adapter |

	adapter := self newStreamAdapter.
	self
		assert: adapter nextPutByteOrderMark == adapter;
		assert: adapter contents = self streamConverterClass byteOrderMark.
]

{ #category : #tests }
XMLEncodingWriteStreamAdapterTest >> testStreamConverter [
	| adapter newConverter |

	adapter := self newStreamAdapter.
	self
		deny: adapter streamConverter isNil;
		assert: adapter streamConverter class == self streamConverterClass.

	newConverter := self streamConverterClass new.
	self
		assert: (adapter streamConverter: newConverter) == adapter;
		assert: adapter streamConverter == newConverter.

	self
		assert: (adapter streamConverter: nil) == adapter;
		assert: adapter streamConverter class == XMLNullStreamConverter.
]