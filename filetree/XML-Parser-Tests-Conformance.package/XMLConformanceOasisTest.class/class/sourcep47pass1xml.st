xml source
sourcep47pass1xml
	"Source file: oasis/p47pass1.xml"

	^ '<!DOCTYPE doc
[
<!ELEMENT doc ANY>
<!ELEMENT a (doc,a?)>
<!ELEMENT b (doc|a)>
<!ELEMENT c (a,b)?>
<!ELEMENT d (a|b)? >
<!ELEMENT e (a,b)* >
<!ELEMENT f (a,b)+ >
]>
<doc/>'