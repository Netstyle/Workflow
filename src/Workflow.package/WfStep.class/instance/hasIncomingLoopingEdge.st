as yet unclassified
hasIncomingLoopingEdge
	^ self incomingSteps anySatisfy: 
		[:eaStep | 
		eaStep outgoingEdges anySatisfy: 
			[:eaEdge | eaEdge to = self and: [eaEdge isLooping]]]