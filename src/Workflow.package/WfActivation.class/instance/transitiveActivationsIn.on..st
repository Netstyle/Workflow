accessing
transitiveActivationsIn: aCollection on: aStream
	self followingActivations do: [ :each |
		(aCollection includes: each)
			ifTrue: [ aStream nextPut: each ]
			ifFalse: [
				each 
					transitiveActivationsIn: aCollection 
					on: aStream ] ].