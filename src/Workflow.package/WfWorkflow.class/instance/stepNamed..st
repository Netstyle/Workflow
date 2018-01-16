query
stepNamed: aString
	^ self allSteps
		detect: [:ea | ea name = aString]
		ifNone: [self error: 'No step found with that name']