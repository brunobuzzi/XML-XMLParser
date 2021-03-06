xml source
sourcevaliddtdtestdtd
	"Source file: sun/valid/dtdtest.dtd"

	^ '<?xml version="1.0" encoding="UTF-8"?>

<!ELEMENT root ANY>

<!ELEMENT e EMPTY>

<!ELEMENT once (e)>
<!ELEMENT twice (e,e)>

<!ENTITY % once-or-twice-a "(e,(e)?)">
<!ENTITY % once-or-twice-b "((e),e?)">
<!ENTITY % once-or-twice-c "((e),(e)?)">
<!ENTITY % once-or-twice-d "(((e)),e?)">
<!ENTITY % once-or-twice-e "(e,(((e)))?)">

<!-- disallowed by spec; a document error, parser needn''t report -->
<!-- (e?,e) -->

<!ELEMENT once-or-twice-a %once-or-twice-a;>
<!ELEMENT once-or-twice-b %once-or-twice-b;>
<!ELEMENT once-or-twice-c %once-or-twice-c;>
<!ELEMENT once-or-twice-d %once-or-twice-d;>
<!ELEMENT once-or-twice-e %once-or-twice-e;>

<!-- disallowed by spec; a document error, parser needn''t report -->
<!--
    <!ELEMENT once-or-twice-X (Xonce;|Xtwice)>
	... above, ''X'' should be a percent sign but this comment
	is being nice to those parsers that try to parse comments
	(they shouldn''t)
-->

<!ENTITY % once-or-more-a "(e+)">
<!ENTITY % once-or-more-b "(e,e*)">
<!ENTITY % once-or-more-c "((e)+)">
<!ENTITY % once-or-more-d "((e),e*)">
<!ENTITY % once-or-more-e "(e,(e)*)">

<!ELEMENT once-or-more-a  %once-or-more-a;>
<!ELEMENT once-or-more-b  %once-or-more-b;>
<!ELEMENT once-or-more-c  %once-or-more-c;>
<!ELEMENT once-or-more-d  %once-or-more-d;>
<!ELEMENT once-or-more-e  %once-or-more-e;>
'