accessing
next
	stream atEnd
		ifTrue: [^ nil]
		ifFalse: [^ stream next asInteger]