tests
testPositioning
	| reader string |

	string := 'test'.
	reader := self newIntegerReaderOn: (self newStreamOn: string).
	string do: [:each |
		self
			deny: reader atEnd;
			assert: reader peek = each;
			assert: reader next = each].
	self
		assert: reader atEnd;
		assert: reader peek isNil;
		assert: reader next isNil.