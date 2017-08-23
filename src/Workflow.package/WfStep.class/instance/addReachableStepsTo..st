accessing
addReachableStepsTo: aCollection
	self outgoingEdges do: [:ea | ea addReachableStepsTo: aCollection]