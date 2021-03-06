accessing
preferredClasses
	"A class var because it should be shared by all subclasses.
	Assign the fully initialized object with #yourself to avoid
	possible race conditions when reinitialization the class."
	^ PreferredClasses
		ifNil: [
			PreferredClasses :=
				IdentitySet new
					addAll:
						(XMLUTFStreamConverter allSubclasses reject: [:each |
							each isAbstractClass
								or: [each isImplicit]]);
					add: XMLLatin1StreamConverter;
					add: XMLASCIIStreamConverter;
					yourself]