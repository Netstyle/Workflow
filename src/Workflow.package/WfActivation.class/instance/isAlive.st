testing
isAlive
	^ self hasBegun or: [(incomingTokens includes: true) and: [self isReady]]