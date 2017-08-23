as yet unclassified
continueDeadInFrame: aFrame
	self isLooping ifFalse: [to continueInFrame: aFrame fromStep: from alive: false]