xml source
sourcevalidnotsa02xml
	"Source file: sun/valid/not-sa02.xml"

	^ '<?xml version=''1.0'' standalone=''no''?>

<!DOCTYPE attributes SYSTEM "../valid/sa.dtd" [
    <!ENTITY internal " number99">
]>

    <!-- sync with ../invalid/not-sa02.xml -->

    <!--
	lots of normalized/defaulted attributes
	keep this from being standalone

	XXX not the best basis for negative tests!!
    -->

<attributes
    notation =	" nonce "
    nmtoken =	" this-gets-normalized "
    nmtokens =	" this 	
 also	 gets normalized "
    id =	"	&internal; "
    idref =	" &internal;
    "
    idrefs =	" &internal;  &internal;    &internal;"
    entity =	" unparsed-1 "
    entities =	"unparsed-1
    unparsed-2		
"
    cdata =	"nothing happens to this one!"
    />
'