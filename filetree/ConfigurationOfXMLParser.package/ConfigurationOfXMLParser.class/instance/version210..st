obsolete - versions
version210: spec 
        <version: '2.1.0' imports: #('2.0.5-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.277'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.100'.
                ].