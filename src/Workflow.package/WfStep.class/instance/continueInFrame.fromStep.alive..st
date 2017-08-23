executing
continueInFrame: aFrame fromStep: aStep alive: aBoolean
	| activation |
	activation := aFrame activationForStep: self.
	activation acceptToken: aBoolean fromStep: aStep.
	
	(activation isReady and: [activation hasBegun not]) ifTrue:
		[activation isAlive
			ifTrue: [self beginInFrame: aFrame]
			ifFalse: [self mournInFrame: aFrame]]