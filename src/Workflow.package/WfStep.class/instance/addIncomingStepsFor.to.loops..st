accessing
addIncomingStepsFor: aStep to: aSet loops: aBoolean
	self outgoingEdges do: [:ea | ea addIncomingStepsFor: aStep to: aSet loops: aBoolean]