obsolete - versions
version158: spec
	<version: '1.5.8' imports: #('1.0.0-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #release.
			spec
				package: 'XML-Parser' with: 'XML-Parser-monty.223';
				package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.56'
				].
	