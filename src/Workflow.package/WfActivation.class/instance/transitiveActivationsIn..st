accessing
transitiveActivationsIn: aCollection
	^ Array streamContents: [ :stream |
		self 
			transitiveActivationsIn: aCollection
			on: stream ].