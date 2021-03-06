xml source
sourcevalidnotsa03xml
	"Source file: sun/valid/not-sa03.xml"

	^ '<?xml version=''1.0'' standalone=''no''?>

<!DOCTYPE attributes SYSTEM "sa.dtd" [
    <!--
	This one is almost standalone since the values
	are pre-normalized in this document, and the
	defaulted attribute is explicit.
    
	BUT the entity refs are both external and need
	normalization.
    -->
]>

<attributes
    token =	"b"
    notation =	"foo"
    nmtoken =	"this-gets-normalized"
    nmtokens =	"this also gets normalized"
    id =	"&internal;"
    idref =	"&internal;"
    idrefs =	"&internal; &internal; &internal;"
    entity =	"unparsed-1"
    entities =	"unparsed-1 unparsed-2"
    cdata =	"nothing happens to this one!"
    />
'