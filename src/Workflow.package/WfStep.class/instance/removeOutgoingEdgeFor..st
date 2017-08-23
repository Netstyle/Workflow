accessing
removeOutgoingEdgeFor: aStep
	(self outgoingEdges select: [:ea | ea step = aStep]) do:
		[:ea | self removeOutgoingEdge: ea].