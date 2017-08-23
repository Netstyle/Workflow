configuring
stepsForEdgesSatisfying: aBlock
	^ self outgoingEdges 
		select: [:ea | aBlock value: ea]
		thenCollect: [:ea | ea step]