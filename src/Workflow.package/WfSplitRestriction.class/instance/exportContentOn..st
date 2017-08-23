as yet unclassified
exportContentOn: builder
	edges do: 
		[:ea | builder element: 'TransitionRef' attributes: (self attributesFor: ea) do: []].