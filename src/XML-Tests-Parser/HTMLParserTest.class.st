Class {
	#name : #HTMLParserTest,
	#superclass : #TestCase,
	#category : #'XML-Tests-Parser'
}

{ #category : #tests }
HTMLParserTest >> testAcceptingInvalidPCData [
	| document |

	#('< one & two >' '& three < four >') do: [:each |
		document := HTMLParser parse: each.
		self
			assert: document allNodes size = 4;
			assert: (document findElementNamed: 'body') contentString = each].
]

{ #category : #tests }
HTMLParserTest >> testParsingNonHTMLSections [
	| document |

	document := HTMLParser parse:
		'<head><title><b>"title</b></TITLE><SCRIPT>',
		'1 < 2; 3 > 2; document.write("</script>");</script>
		<style>//"</style><HEAD>'.
	self
		assert: (document findElementNamed: 'title') contentString = '<b>"title</b>';
		assert: (document findElementNamed: 'script') contentString =
			'1 < 2; 3 > 2; document.write("</script>");';
		assert: (document findElementNamed: 'style') contentString = '//"'.
]

{ #category : #tests }
HTMLParserTest >> testParsingText [
	| document |
	
	document := HTMLParser parse: 'text'.
	self
		assert: document allNodes size = 4;
		assert: (document allElementsCollect: [:each | each name]) asArray = #('html' 'body');
		assert: (document findElementNamed: 'body') contentString = 'text'.
]

{ #category : #tests }
HTMLParserTest >> testParsingVoidElements [
	| document |

	document := HTMLParser parse: '<body>one<img>two</img><body>three'.
	self
		assert: (document allElementsCollect: [:each | each name]) asArray = #('html' 'body' 'img');
		assert: (document findElementNamed: 'body') contentString = 'one twothree';
		deny: (document findElementNamed: 'img') hasChildren.
]

{ #category : #tests }
HTMLParserTest >> testReopeningHTML [
	self assert:
		((HTMLParser parse: '<html><B></body></html><I>')
			allElementsCollect: [:each | each name]) asArray = #('html' 'body' 'b' 'i').
]

{ #category : #tests }
HTMLParserTest >> testReopeningHeadSection [
	| document |

	document := HTMLParser parse: '<head><p>text<title>reopened'.
	self
		assert: (document root elementsCollect: [:each | each name]) asArray = #('head' 'body');
		assert: (document findElementNamed: 'head') elements size = 1;
		assert: ((document findElementNamed: 'head') elementAt: 'title') contentString = 'reopened';
		assert: (document findElementNamed: 'body') elements size = 1;
		assert: ((document findElementNamed: 'body') elementAt: 'p') contentString = 'text'.
]