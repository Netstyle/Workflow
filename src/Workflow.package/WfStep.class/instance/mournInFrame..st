executing
mournInFrame: aFrame
	self outgoingEdges do: [:ea | ea continueDeadInFrame: aFrame]