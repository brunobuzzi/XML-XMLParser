obsolete - versions
version247: spec 
        <version: '2.4.7' imports: #('2.4.4-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.317'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.130'.
                ].