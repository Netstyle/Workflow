as yet unclassified
exportActivations
	builder element: 'Activations' do:
		[self frame workList allCompleted do:
			[:ea | ea exportOn: builder]].