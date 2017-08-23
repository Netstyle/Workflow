accessing
outgoingSteps
	^ self outgoingEdges collect: [:ea | ea step]