as yet unclassified
exportOutgoingEdges
	builder element: 'Transitions' do:
		[self outgoingEdges do: [:ea | (ea newExporterOn: builder) export]].