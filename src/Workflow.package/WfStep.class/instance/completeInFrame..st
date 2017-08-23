executing
completeInFrame: aFrame
	self outgoingEdges do: [:ea | ea continueInFrame: aFrame]