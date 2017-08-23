as yet unclassified
addIncomingStepsFor: aStep to: aSet loops: aBoolean
	(aBoolean or: [self isLooping not]) ifTrue:
		[to = aStep ifTrue: [aSet add: from]]