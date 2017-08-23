as yet unclassified
addReachableStepsTo: aCollection
	self isLooping ifFalse:
		[aCollection add: to.
		to addReachableStepsTo: aCollection]