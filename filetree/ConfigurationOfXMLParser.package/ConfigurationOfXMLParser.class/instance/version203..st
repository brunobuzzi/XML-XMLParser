obsolete - versions
version203: spec 
        <version: '2.0.3' imports: #('2.0.1-baseline')>

        spec for: #common do: [
                spec blessing: #release.
			spec package: 'XML-Parser' with: 'XML-Parser-monty.271'.
			spec package: 'XML-Tests-Parser' with: 'XML-Tests-Parser-monty.93'.
                ].