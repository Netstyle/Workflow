as yet unclassified
followingActivationInFrame: aFrame
	^ self isLooping
		ifFalse: [aFrame basicActivationForStep: to]
		ifTrue:
			[aFrame workList allActivations detect:
				[:ea |
				ea step = to
					and: [ea isFrameEntryPoint]
					and: [ea frame parent = aFrame]]
				ifNone: []]