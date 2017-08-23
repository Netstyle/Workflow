accessing
removeOutgoingEdge: anOutgoingEdge
	outgoingEdges remove: anOutgoingEdge.
	self workflowManager noteRemovalOfEdge: anOutgoingEdge fromStep: self.
	^ anOutgoingEdge