configuring
addOutgoingEdgeFor: aStep
	| edge |
	edge := WfOutgoingEdge from: self to: aStep.
	outgoingEdges add: edge.
	self workflowManager noteAdditionOfEdge: edge toStep: self.
	^ edge