This class parses an attribute definition in an ATTLIST declaration and returns a new XMLAttributeValidator for it. It assumes the type has already been checked for well-formedness by the tokenizer and that it contains a value like "ID", "ENTITY", or an enumeration list.