tokenizing
nextEndTag
	| tagName nextChar |
	"Skip /"
	streamReader next.
	(tagName := elementNester currentElement)
		ifNil: [self errorUnexpectedEndTag: self nextElementName].
	1 to: tagName size do: [:i |
		"can't use #== here because wide chars aren't an immediate type
		in pre-Spur VMs"
		(nextChar := streamReader next) = (tagName at: i)
			ifFalse: [
				self
					errorExpectedEndTag: tagName
					butGot: nextChar
					at: i]].
	elementNester endCurrentElement.
	driver handleEndTag: tagName.
	streamReader skipSeparators.
	(nextChar := streamReader next) == $>
		ifFalse: [self errorExpectedTagTerminatorButGot: nextChar].