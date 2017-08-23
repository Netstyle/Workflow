configuring
atOutgoingEdgeFor: aStep putCondition: aCondition
	^ (self outgoingEdges 
		detect: [:ea | ea step = aStep]
		ifNone: [self addOutgoingEdgeFor: aStep]) condition: aCondition