as yet unclassified
exportTransitionRestrictions
	self transitionRestrictions ifNotEmpty: 
		[:restrictions |
		builder element: 'TransitionRestrictions' do:
			[restrictions do:
				[:ea | ea exportOn: builder]]].