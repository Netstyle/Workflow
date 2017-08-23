testing
isFrameEntryPoint
	^ self isAlive and: [(incomingTokens includes: true) not]