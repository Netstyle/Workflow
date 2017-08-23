running
assertStep: aStep isEquivalentTo: otherStep
	self assert: aStep hash = otherStep hash.
	self assert: aStep species = otherStep species.
	aStep outgoingEdges with: otherStep outgoingEdges do: 
		[:ea :other | self assertOutgoingEdge: ea isEquivalentTo: other].