as yet unclassified
continueAliveInFrame: aFrame
	self isLooping
		ifTrue: [to loopInFrame: aFrame fromStep: from]
		ifFalse: [to continueInFrame: aFrame fromStep: from alive: true]