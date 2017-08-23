as yet unclassified
exportProperty: key value: value
	builder element: 'Property' do:
		[builder element: 'Key' do: [builder content: key asString].
		builder element: 'Value' do: [value exportOn: builder]].