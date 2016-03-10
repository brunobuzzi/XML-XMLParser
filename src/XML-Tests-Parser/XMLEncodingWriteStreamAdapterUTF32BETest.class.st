Class {
	#name : #XMLEncodingWriteStreamAdapterUTF32BETest,
	#superclass : #XMLEncodingWriteStreamAdapterTest,
	#category : #'XML-Tests-Parser-Streams'
}

{ #category : #converting }
XMLEncodingWriteStreamAdapterUTF32BETest >> contentsFromCharacter: aCharacter [
	^ self asciiToUTF32BE: aCharacter asString
]

{ #category : #accessing }
XMLEncodingWriteStreamAdapterUTF32BETest >> decodedInvalidCharacters [
	^ self decodedUnicodeInvalidCharacters
]

{ #category : #accessing }
XMLEncodingWriteStreamAdapterUTF32BETest >> inputCollection [
	^ self decodedUTF32String
]

{ #category : #accessing }
XMLEncodingWriteStreamAdapterUTF32BETest >> outputCollection [
	^ self encodedUTF32BEString
]

{ #category : #accessing }
XMLEncodingWriteStreamAdapterUTF32BETest >> streamConverterClass [
	^ XMLUTF32BigEndianStreamConverter
]