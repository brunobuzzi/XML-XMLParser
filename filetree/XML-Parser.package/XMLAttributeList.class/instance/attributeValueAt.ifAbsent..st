private
attributeValueAt: aName ifAbsent: aBlock
	| i |

	^ (i := self indexOfAttributeValueAt: aName) > 0
		ifTrue: [(self at: i) value]
		ifFalse: [aBlock value]