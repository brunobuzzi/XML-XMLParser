copying
copy
	| copy |

	copy := self copyEmpty.
	"use #to:do: for speed with direct access"
	1 to: collection size do: [:i |
		copy addToCopyLast: (collection at: i)].
	^ copy.